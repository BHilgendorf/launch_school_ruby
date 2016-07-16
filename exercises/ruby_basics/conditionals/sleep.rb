status = ['awake', 'tired'].sample

do_this = if status == 'awake'
            'Be productive'
          else
            'Go to sleep!'
          end

puts do_this
