(module
 (export "main" (func $bu))
  (func $bu  (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
    ;; create a local variable and initialize it to 0
    (local $i i32)
	(local $q i32)
	i32.const 10
	local.set $q
    (loop $my_loop

      ;; add one to $i
      local.get $i
      i32.const 1
      i32.add
      local.set $i
	  
	  local.get $i
	  i32.const 20
	  i32.xor
	  local.set $q
	  
	  local.get $q
	  i32.const 20
	  i32.sub
	  local.set $q
	  
	  local.get $q
	  i32.const 20
	  i32.mul
	  local.set $q
	  
	  local.get $q
	  i32.const 20
	  local.set $q    ;;replace this instruction
	  local.set $q
	  
      ;; if $i is less than 10 branch to loop
      local.get $i
      i32.const 100000000
      i32.lt_s
      br_if $my_loop
    )
	  local.get $q



  )

)