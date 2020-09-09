class OrdersController < ApplicationController
  def create
  pokegg = Pokegg.find(params[:pokegg_id])
  order  = Order.create!(pokegg: pokegg, amount: pokegg.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: pokegg.name,
      images: [pokegg.photo.key],
      amount: pokegg.price_cents,
      currency: 'eur',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
authorize order
end

def show
  @order = current_user.orders.find(params[:id])
  @pokegg = @order.pokegg
  authorize @order
end

end
