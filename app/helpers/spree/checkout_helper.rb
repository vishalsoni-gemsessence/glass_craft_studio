module Spree
 module CheckoutHelper
   def checkout_progress(numbers: true)
     states = @order.checkout_steps
     items = states.each_with_index.map do |state, i|
       text = Spree.t("order_state.#{state}").titleize
       text.prepend("#{i.succ}. ") if numbers

       css_classes = ['d-flex', 'align-items-center', 'pay-pagination-item']
       current_index = states.index(@order.state)
       state_index = states.index(state)

       if state_index < current_index
         css_classes << 'completed'
         text = link_to text, checkout_state_path(state)
       end

       css_classes << 'next' if state_index == current_index + 1
       css_classes << 'active' if state == @order.state
       css_classes << 'first' if state_index == 0
       css_classes << 'last' if state_index == states.length - 1
       # No more joined classes. IE6 is not a target browser.
       # Hack: Stops <a> being wrapped round previous items twice.
       if state_index < current_index
         content_tag('li', text, class: css_classes.join(' '))
       else
         content_tag('li', content_tag('a', text), class: css_classes.join(' '))
       end
     end
     content_tag('ul', raw(items.join("\n")), class: 'progress-steps pay-pagination d-flex align-items-center', id: "checkout-step-#{@order.state}")
   end
 end
end
