  (memory (export "memory") 10 1000)

 
 (func $djb2 (param $input i32) (param $input_end i32)(param $hash i32) (result i32)
    (local $char i32)
	local.get $input_end
	local.get $input
	i32.eq 
    (if (result i32)
      (then
	  local.get $hash
      )
      (else
       (local.set $hash
          (i32.add
            (local.get $hash)
            (i32.add
              (i32.load8_u(local.get $input))
              (i32.shl (local.get $hash) (i32.const 5))
            )
          )
		)
        
        
        (local.set $input (i32.add (local.get $input) (i32.const 1)))
        (call $djb2 (local.get $input) (local.get $input_end)(local.get $hash))
		
      )
	  
   )
  )
  (export "djb2" (func $djb2))