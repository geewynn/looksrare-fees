(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 9)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 2)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 4)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (import "index" "_registerHook" (func $~lib/matchstick-as/assembly/index/_registerHook (type 1)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 3)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 13)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 4)))
  (import "conversion" "typeConversion.bigIntToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToHex (type 0)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 1)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 1) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 5
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 7
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 2) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 12
            i32.const 12
            call $~lib/rt/stub/__new
            local.set 0
          end
          local.get 0
        end
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 1936
      i32.const 18
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 4) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 6) (result i32)
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 0
    i32.const 0
    i32.const 1
    call $~lib/typedarray/Uint8Array#__set
    local.get 0
    i32.const 1
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get 0
    i32.const 2
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get 0
    i32.const 3
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 1776
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 2608
      i32.const 1776
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/string/String.__eq (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 4
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/util/memory/memcpy (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 4) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 0
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 3
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 0
            i32.load
            local.get 3
            call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.tee 2
      i32.load offset=12
      local.tee 10
      i32.const 1
      i32.add
      local.tee 11
      local.tee 0
      local.get 2
      i32.load offset=8
      local.tee 8
      i32.const 2
      i32.shr_u
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 268435455
        i32.gt_u
        if  ;; label = @3
          i32.const 1728
          i32.const 1776
          i32.const 17
          i32.const 48
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        i32.load
        local.tee 12
        local.set 1
        local.get 8
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 1073741820
        local.get 4
        i32.const 1073741820
        i32.lt_u
        select
        local.tee 4
        local.get 0
        i32.const 8
        local.get 0
        i32.const 8
        i32.gt_u
        select
        i32.const 2
        i32.shl
        local.tee 0
        local.get 0
        local.get 4
        i32.lt_u
        select
        local.tee 4
        i32.const 1073741804
        i32.gt_u
        if  ;; label = @3
          i32.const 1056
          i32.const 1120
          i32.const 99
          i32.const 30
          call $~lib/builtins/abort
          unreachable
        end
        local.get 4
        i32.const 16
        i32.add
        local.set 5
        local.get 1
        i32.const 16
        i32.sub
        local.tee 0
        i32.const 15
        i32.and
        i32.const 1
        local.get 0
        select
        if  ;; label = @3
          i32.const 0
          i32.const 1120
          i32.const 45
          i32.const 3
          call $~lib/builtins/abort
          unreachable
        end
        global.get $~lib/rt/stub/offset
        local.get 0
        local.get 0
        i32.const 4
        i32.sub
        local.tee 9
        i32.load
        local.tee 7
        i32.add
        i32.eq
        local.set 6
        local.get 5
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        i32.const 4
        i32.sub
        local.set 1
        local.get 5
        local.get 7
        i32.gt_u
        if  ;; label = @3
          local.get 6
          if  ;; label = @4
            local.get 5
            i32.const 1073741820
            i32.gt_u
            if  ;; label = @5
              i32.const 1056
              i32.const 1120
              i32.const 52
              i32.const 33
              call $~lib/builtins/abort
              unreachable
            end
            local.get 0
            local.get 1
            i32.add
            local.tee 5
            memory.size
            local.tee 7
            i32.const 16
            i32.shl
            i32.const 15
            i32.add
            i32.const -16
            i32.and
            local.tee 6
            i32.gt_u
            if  ;; label = @5
              local.get 7
              local.get 5
              local.get 6
              i32.sub
              i32.const 65535
              i32.add
              i32.const -65536
              i32.and
              i32.const 16
              i32.shr_u
              local.tee 6
              local.get 6
              local.get 7
              i32.lt_s
              select
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 6
                memory.grow
                i32.const 0
                i32.lt_s
                if  ;; label = @7
                  unreachable
                end
              end
            end
            local.get 5
            global.set $~lib/rt/stub/offset
            local.get 9
            local.get 1
            i32.store
          else
            local.get 1
            local.get 7
            i32.const 1
            i32.shl
            local.tee 5
            local.get 1
            local.get 5
            i32.gt_u
            select
            call $~lib/rt/stub/__alloc
            local.tee 1
            local.get 0
            local.get 7
            call $~lib/memory/memory.copy
            local.get 1
            local.set 0
          end
        else
          local.get 6
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.add
            global.set $~lib/rt/stub/offset
            local.get 9
            local.get 1
            i32.store
          end
        end
        local.get 0
        i32.const 4
        i32.sub
        local.get 4
        i32.store offset=16
        local.get 8
        local.get 0
        i32.const 16
        i32.add
        local.tee 0
        i32.add
        local.get 4
        local.get 8
        i32.sub
        call $~lib/memory/memory.fill
        local.get 0
        local.get 12
        i32.ne
        if  ;; label = @3
          local.get 2
          local.get 0
          i32.store
          local.get 2
          local.get 0
          i32.store offset=4
        end
        local.get 2
        local.get 4
        i32.store offset=8
      end
      local.get 2
      i32.load offset=4
      local.get 10
      i32.const 2
      i32.shl
      i32.add
      local.get 3
      i32.store
      local.get 2
      local.get 11
      i32.store offset=12
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 2) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 3184
      i32.const 3248
      i32.const 70
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 3616
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 3
    select
    local.tee 1
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 1
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 1
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 1
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 1
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 1
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 3
    i32.add
    local.tee 0
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 4
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 5
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 2
        local.get 0
        i32.const 4
        i32.sub
        local.tee 0
        i32.const 1
        i32.shl
        i32.add
        local.get 5
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 3628
        i32.add
        i64.load32_u
        local.get 5
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 3628
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          local.get 0
          i32.const 2
          i32.sub
          local.tee 0
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 3628
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 100
          i32.div_u
        end
        local.set 1
      end
      local.get 1
    end
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 3628
      i32.add
      i32.load
      i32.store
    else
      local.get 2
      local.get 0
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end
    local.get 3
    if  ;; label = @1
      local.get 4
      i32.const 45
      i32.store16
    end
    local.get 4)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/rt/__newArray (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    local.set 5
    local.get 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 5
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/util/string/joinStringArray (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 3104
      return
    end
    local.get 7
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      if (result i32)  ;; label = @2
        local.get 0
      else
        i32.const 3104
      end
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          local.get 4
          local.get 6
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 7
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    i32.mul
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 6
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 6
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 6
            i32.add
          end
          local.set 3
        end
        local.get 4
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 2
            local.get 4
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 4
            i32.add
          end
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.const 1
      i32.shl
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/string/String#concat (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 3104
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 8 (;@1;)
                    end
                    local.get 0
                    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
                    return
                  end
                  local.get 0
                  i32.load
                  i32.const 5
                  i32.eq
                  if (result i32)  ;; label = @8
                    i32.const 0
                  else
                    local.get 0
                    i32.load
                    i32.const 1
                    i32.ne
                    if  ;; label = @9
                      i32.const 3360
                      i32.const 3248
                      i32.const 65
                      i32.const 5
                      call $~lib/builtins/abort
                      unreachable
                    end
                    local.get 0
                    i64.load offset=8
                    i32.wrap_i64
                  end
                  call $~lib/util/number/itoa32
                  return
                end
                local.get 0
                i32.load
                i32.const 2
                i32.ne
                if  ;; label = @7
                  i32.const 5200
                  i32.const 3248
                  i32.const 80
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i32.wrap_i64
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 5360
              i32.const 5392
              local.get 0
              i32.load
              i32.const 5
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 0
              else
                local.get 0
                i32.load
                i32.const 3
                i32.ne
                if  ;; label = @7
                  i32.const 5280
                  i32.const 3248
                  i32.const 52
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i64.const 0
                i64.ne
              end
              select
              return
            end
            local.get 0
            local.tee 1
            i32.load
            i32.const 4
            i32.ne
            if  ;; label = @5
              i32.const 5424
              i32.const 3248
              i32.const 85
              i32.const 5
              call $~lib/builtins/abort
              unreachable
            end
            i32.const 0
            local.set 0
            local.get 1
            i64.load offset=8
            i32.wrap_i64
            local.tee 1
            i32.load offset=12
            local.tee 3
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 4
            i32.load offset=4
            local.set 5
            loop  ;; label = @5
              local.get 0
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 2
              local.get 3
              i32.gt_s
              select
              i32.lt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 2
                local.get 1
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 1
                i32.const 5520
                i32.load
                call_indirect $0 (type 5)
                local.set 6
                local.get 2
                local.get 5
                i32.add
                local.get 6
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 5488
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.const 5552
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 5584
            call $~lib/string/String#concat
            return
          end
          i32.const 1360
          return
        end
        local.get 0
        i32.load
        i32.const 6
        i32.ne
        if  ;; label = @3
          i32.const 5616
          i32.const 3248
          i32.const 57
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      i32.load
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 5696
        i32.const 3248
        i32.const 75
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i64.load offset=8
      i32.wrap_i64
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 5860
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 5856
    i32.const 5852
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 3104
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1532
    i32.load
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 5940
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 5936
      i32.const 5932
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 3104
      call $~lib/util/string/joinStringArray
    else
      i32.const 1520
      local.get 0
      i32.load
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    end)
  (func $src/helpers/getOrCreateUser (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 2544
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.set 0
      i32.const 4
      i32.const 15
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 1
      local.set 2
      local.get 0
      i64.extend_i32_u
      local.set 3
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 3
      i64.store offset=8
      local.get 2
      i32.const 2576
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      i32.const 2576
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 2736
        i32.const 2832
        i32.const 22
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      if  ;; label = @2
        local.get 0
        i32.load
        if  ;; label = @3
          i32.const 3140
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 3148
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 3136
          i32.const 3132
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 3104
          call $~lib/util/string/joinStringArray
          i32.const 2832
          i32.const 24
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 2544
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        local.get 1
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
    end
    local.get 1)
  (func $src/helpers/getOrCreateCollection (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 6080
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.set 0
      i32.const 4
      i32.const 21
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 1
      local.set 2
      local.get 0
      i64.extend_i32_u
      local.set 3
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 3
      i64.store offset=8
      local.get 2
      i32.const 2576
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      i32.const 2576
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 6128
        i32.const 2832
        i32.const 54
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      if  ;; label = @2
        local.get 0
        i32.load
        if  ;; label = @3
          i32.const 6420
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 6428
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 6416
          i32.const 6412
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 3104
          call $~lib/util/string/joinStringArray
          i32.const 2832
          i32.const 56
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 6080
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        local.get 1
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
    end
    local.get 1)
  (func $generated/schema/Item#set:collection (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 6560
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/helpers/getOrCreateItem (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64)
    i32.const 6528
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 6496
    call $~lib/string/String#concat
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.set 2
      i32.const 4
      i32.const 22
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 1
      local.set 3
      local.get 2
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 3
      i32.const 2576
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      call $generated/schema/Item#set:collection
      local.get 1
      i32.const 2576
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 6608
        i32.const 2832
        i32.const 103
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      if  ;; label = @2
        local.get 0
        i32.load
        if  ;; label = @3
          i32.const 6868
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 6876
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 6864
          i32.const 6860
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 3104
          call $~lib/util/string/joinStringArray
          i32.const 2832
          i32.const 105
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 6528
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        local.get 1
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
    end
    local.get 1)
  (func $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|0 (type 3)
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $src/helpers/getOrCreateUser
    drop
    i32.const 5968
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    call $src/helpers/getOrCreateCollection
    drop
    i32.const 5968
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    i32.const 6464
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    call $src/helpers/getOrCreateItem
    drop)
  (func $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|1 (type 3)
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor (type 10) (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 32
        i32.const 24
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store offset=20
    local.get 0
    local.get 7
    i32.store offset=24
    local.get 0
    local.get 8
    i32.store offset=28
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Block#constructor (type 11) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 60
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee 15
    local.get 0
    i32.store
    local.get 15
    local.get 1
    i32.store offset=4
    local.get 15
    local.get 2
    i32.store offset=8
    local.get 15
    local.get 3
    i32.store offset=12
    local.get 15
    local.get 4
    i32.store offset=16
    local.get 15
    local.get 5
    i32.store offset=20
    local.get 15
    local.get 6
    i32.store offset=24
    local.get 15
    local.get 7
    i32.store offset=28
    local.get 15
    local.get 8
    i32.store offset=32
    local.get 15
    local.get 9
    i32.store offset=36
    local.get 15
    local.get 10
    i32.store offset=40
    local.get 15
    local.get 11
    i32.store offset=44
    local.get 15
    local.get 12
    i32.store offset=48
    local.get 15
    local.get 13
    i32.store offset=52
    local.get 15
    local.get 14
    i32.store offset=56
    local.get 15)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Transaction#constructor (type 10) (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 36
    i32.const 26
    call $~lib/rt/stub/__new
    local.tee 9
    local.get 0
    i32.store
    local.get 9
    local.get 1
    i32.store offset=4
    local.get 9
    local.get 2
    i32.store offset=8
    local.get 9
    local.get 3
    i32.store offset=12
    local.get 9
    local.get 4
    i32.store offset=16
    local.get 9
    local.get 5
    i32.store offset=20
    local.get 9
    local.get 6
    i32.store offset=24
    local.get 9
    local.get 7
    i32.store offset=28
    local.get 9
    local.get 8
    i32.store offset=32
    local.get 9)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.TransactionReceipt#constructor (type 12) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 44
    i32.const 30
    call $~lib/rt/stub/__new
    local.tee 11
    local.get 0
    i32.store
    local.get 11
    local.get 1
    i32.store offset=4
    local.get 11
    local.get 2
    i32.store offset=8
    local.get 11
    local.get 3
    i32.store offset=12
    local.get 11
    local.get 4
    i32.store offset=16
    local.get 11
    local.get 5
    i32.store offset=20
    local.get 11
    local.get 6
    i32.store offset=24
    local.get 11
    local.get 7
    i32.store offset=28
    local.get 11
    local.get 8
    i32.store offset=32
    local.get 11
    local.get 9
    i32.store offset=36
    local.get 11
    local.get 10
    i32.store offset=40
    local.get 11)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Log#constructor (type 7) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 44
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 10
    local.get 0
    i32.store
    local.get 10
    local.get 1
    i32.store offset=4
    local.get 10
    local.get 2
    i32.store offset=8
    local.get 10
    local.get 3
    i32.store offset=12
    local.get 10
    local.get 4
    i32.store offset=16
    local.get 10
    local.get 5
    i32.store offset=20
    local.get 10
    local.get 6
    i32.store offset=24
    local.get 10
    local.get 7
    i32.store offset=28
    local.get 10
    local.get 8
    i32.store offset=32
    local.get 10
    i32.const 2128
    i32.store offset=36
    local.get 10
    local.get 9
    i32.store offset=40
    local.get 10)
  (func $~lib/matchstick-as/assembly/defaults/newMockEvent (type 6) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.tee 1
    local.set 8
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.tee 0
    local.get 0
    local.get 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.tee 9
    local.get 0
    local.get 0
    local.get 0
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Block#constructor
    local.set 10
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.tee 2
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.tee 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.tee 3
    local.get 3
    local.get 0
    local.get 0
    local.get 0
    local.get 2
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Transaction#constructor
    local.set 11
    i32.const 0
    i32.const 29
    i32.const 7312
    call $~lib/rt/__newArray
    local.set 12
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.set 4
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 13
    i32.const 1
    i32.const 34
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    local.set 14
    i32.const 1
    i32.const 32
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 6
    i32.load offset=4
    drop
    local.get 6
    i32.load offset=4
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.tee 2
    i32.store
    global.get $~lib/matchstick-as/assembly/defaults/defaultIntBytes
    local.set 15
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    local.set 3
    i32.const 1
    i32.const 33
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 0
    i32.store8
    local.get 7
    i32.const 0
    i32.store8
    local.get 14
    local.get 6
    local.get 2
    local.get 2
    local.get 15
    local.get 2
    local.get 3
    local.get 3
    local.get 3
    local.get 7
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Log#constructor
    local.set 2
    local.get 5
    i32.load offset=4
    local.get 2
    i32.store
    i32.const 0
    local.get 9
    local.get 8
    local.get 1
    i32.const 2128
    local.get 10
    local.get 11
    local.get 12
    local.get 4
    local.get 0
    local.get 4
    local.get 0
    local.get 0
    local.get 0
    local.get 13
    local.get 5
    global.get $~lib/matchstick-as/assembly/defaults/defaultBigInt
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    local.tee 1
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.TransactionReceipt#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor)
  (func $~lib/matchstick-as/defaults/newMockEvent (type 6) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.tee 1
    local.set 8
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 0
    local.get 0
    local.get 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.tee 9
    local.get 0
    local.get 0
    local.get 0
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Block#constructor
    local.set 10
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 2
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.tee 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.tee 3
    local.get 3
    local.get 0
    local.get 0
    local.get 0
    local.get 2
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Transaction#constructor
    local.set 11
    i32.const 0
    i32.const 29
    i32.const 7344
    call $~lib/rt/__newArray
    local.set 12
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 4
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 13
    i32.const 1
    i32.const 34
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 14
    i32.const 1
    i32.const 32
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 6
    i32.load offset=4
    drop
    local.get 6
    i32.load offset=4
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 2
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultIntBytes
    local.set 15
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 3
    i32.const 1
    i32.const 33
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 0
    i32.store8
    local.get 7
    i32.const 0
    i32.store8
    local.get 14
    local.get 6
    local.get 2
    local.get 2
    local.get 15
    local.get 2
    local.get 3
    local.get 3
    local.get 3
    local.get 7
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Log#constructor
    local.set 2
    local.get 5
    i32.load offset=4
    local.get 2
    i32.store
    i32.const 0
    local.get 9
    local.get 8
    local.get 1
    i32.const 2128
    local.get 10
    local.get 11
    local.get 12
    local.get 4
    local.get 0
    local.get 4
    local.get 0
    local.get 0
    local.get 0
    local.get 13
    local.get 5
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 1
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.TransactionReceipt#constructor
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 7376
      i32.const 7472
      i32.const 197
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 7776
      i32.const 7472
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 7872
      i32.const 7472
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/RoyaltyPayment#set:item (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 8032
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/RoyaltyPayment#set:tokenId (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7584
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/User#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 7968
      i32.const 2832
      i32.const 38
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/RoyaltyPayment#set:currency (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7696
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/RoyaltyPayment#set:amount (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7744
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/TransactionRoyaltyPayment#set:royaltyPayment (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 8464
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/looks-rare-exchange/handleRoyaltyPayment (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateCollection
    local.set 6
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 1
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i32.store
    local.get 1
    local.get 3
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $src/helpers/getOrCreateItem
    local.set 5
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateUser
    local.set 3
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 6496
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 4
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 7
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    local.set 1
    i32.const 4
    i32.const 36
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 8
    i32.const 4
    i32.const 37
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 2
    local.get 4
    i64.extend_i32_u
    local.set 9
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 9
    i64.store offset=8
    local.get 2
    i32.const 2576
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 6
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 4
    i32.eqz
    if  ;; label = @1
      i32.const 7968
      i32.const 2832
      i32.const 70
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    call $generated/schema/Item#set:collection
    local.get 5
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 5
    i32.eqz
    if  ;; label = @1
      i32.const 7968
      i32.const 2832
      i32.const 119
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    local.get 5
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    call $generated/schema/RoyaltyPayment#set:item
    local.get 2
    local.get 7
    call $generated/schema/RoyaltyPayment#set:tokenId
    local.get 3
    call $generated/schema/User#get:id
    i64.extend_i32_u
    local.set 9
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 9
    i64.store offset=8
    local.get 2
    i32.const 7632
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    local.get 1
    call $generated/schema/RoyaltyPayment#set:currency
    local.get 2
    local.get 8
    call $generated/schema/RoyaltyPayment#set:amount
    local.get 2
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8064
      i32.const 2832
      i32.const 161
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 8372
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 8380
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 8368
        i32.const 8364
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 3104
        call $~lib/util/string/joinStringArray
        i32.const 2832
        i32.const 163
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 8416
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 4
    i32.const 38
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 0
    local.get 1
    i64.extend_i32_u
    local.set 9
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 9
    i64.store offset=8
    local.get 0
    i32.const 2576
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 7968
      i32.const 2832
      i32.const 177
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    call $generated/schema/TransactionRoyaltyPayment#set:royaltyPayment
    local.get 0
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8512
      i32.const 2832
      i32.const 387
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 8852
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 8860
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 8848
        i32.const 8844
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 3104
        call $~lib/util/string/joinStringArray
        i32.const 2832
        i32.const 392
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 8896
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 8976
      i32.const 9040
      i32.const 13
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|2 (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 5968
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 6464
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 3
    i32.const 2432
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 4
    i32.const 7136
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    i32.const 7248
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 6
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    local.tee 1
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 6496
    call $~lib/string/String#concat
    local.get 1
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 2
    call $~lib/matchstick-as/defaults/newMockEvent
    local.set 1
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 6560
    i32.store
    local.get 7
    local.get 0
    i32.store offset=4
    local.get 3
    i64.extend_i32_u
    local.set 14
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 14
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 7584
    i32.store
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7632
    i32.store
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 5
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 7696
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 6
    i64.extend_i32_u
    local.set 14
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 14
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 7744
    i32.store
    local.get 6
    local.get 0
    i32.store offset=4
    local.get 1
    i32.load
    local.set 8
    local.get 1
    i32.load offset=4
    local.set 9
    local.get 1
    i32.load offset=8
    local.set 10
    local.get 1
    i32.load offset=12
    local.set 11
    local.get 1
    i32.load offset=16
    local.set 12
    local.get 1
    i32.load offset=20
    local.set 13
    i32.const 5
    i32.const 29
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 7
    i32.store
    local.get 0
    i32.load offset=4
    local.get 3
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.get 4
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 5
    i32.store offset=12
    local.get 0
    i32.load offset=4
    local.get 6
    i32.store offset=16
    local.get 1
    i32.load offset=28
    local.set 1
    i32.const 32
    i32.const 35
    call $~lib/rt/stub/__new
    local.get 8
    local.get 9
    local.get 10
    local.get 11
    local.get 12
    local.get 13
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor
    call $src/looks-rare-exchange/handleRoyaltyPayment
    i32.const 8416
    local.get 2
    i32.const 7584
    i32.const 6464
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8416
    local.get 2
    i32.const 7632
    i32.const 9136
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8416
    local.get 2
    i32.const 7696
    i32.const 9248
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8416
    local.get 2
    i32.const 7744
    i32.const 7248
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 8416
    local.get 2
    i32.const 8032
    i32.const 9360
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $~lib/string/String#charAt (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 9772
    i32.load
    i32.const 1
    i32.shr_u
    i32.ge_u
    if  ;; label = @1
      i32.const 3104
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 9776
    i32.add
    i32.load16_u
    i32.store16
    local.get 1)
  (func $~lib/string/String#substr (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    local.get 1
    local.tee 3
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 3
      local.get 4
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 3
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 1
    local.get 4
    local.get 3
    i32.sub
    local.tee 2
    local.get 1
    local.get 2
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee 1
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 3104
      return
    end
    local.get 1
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    i32.const 1
    i32.shl
    i32.add
    local.get 1
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/util/string/strtol<i32> (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 2
    i32.load16_u
    local.set 0
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 128
        i32.or
        i32.const 160
        i32.eq
        local.get 0
        i32.const 9
        i32.sub
        i32.const 4
        i32.le_u
        i32.or
        local.get 0
        i32.const 5760
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const 1
        local.get 0
        i32.const -8192
        i32.add
        i32.const 10
        i32.le_u
        br_if 0 (;@2;)
        drop
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 5760
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8232
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8233
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8239
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8287
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 12288
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 65279
            i32.eq
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.add
        local.tee 2
        i32.load16_u
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 1
    local.set 4
    i32.const 1
    local.get 0
    i32.const 43
    i32.eq
    local.get 0
    i32.const 45
    i32.eq
    select
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 1
      i32.sub
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      i32.const -1
      i32.const 1
      local.get 0
      i32.const 45
      i32.eq
      select
      local.set 4
      local.get 2
      i32.const 2
      i32.add
      local.tee 2
      i32.load16_u
    else
      local.get 0
    end
    i32.const 48
    i32.eq
    i32.const 0
    local.get 1
    i32.const 2
    i32.gt_s
    select
    if (result i32)  ;; label = @1
      local.get 2
      i32.load16_u offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
    else
      i32.const 0
    end
    if  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.sub
      end
      local.set 1
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.tee 0
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 0
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 48
            i32.sub
          else
            local.get 0
            i32.const 65
            i32.sub
            i32.const 25
            i32.le_u
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 55
              i32.sub
            else
              local.get 0
              i32.const 87
              i32.sub
              local.get 0
              local.get 0
              i32.const 97
              i32.sub
              i32.const 25
              i32.le_u
              select
            end
          end
          local.tee 0
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 4
          i32.shl
          i32.add
          local.set 3
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          br 2 (;@1;)
        end
      end
    end
    local.get 3
    local.get 4
    i32.mul)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString (type 6) (result i32)
    (local i32 i32 i32)
    i32.const 9772
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.and
    if  ;; label = @1
      i32.const 9936
      i32.const 9776
      call $~lib/string/String#concat
      i32.const 9968
      call $~lib/string/String#concat
      i32.const 10032
      i32.const 75
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    i32.const 9772
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 2
    i32.ge_u
    if (result i32)  ;; label = @1
      i32.const 0
      call $~lib/string/String#charAt
      i32.const 3616
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 1
      call $~lib/string/String#charAt
      i32.const 10160
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 9776
      i32.const 2
      i32.const 2147483647
      call $~lib/string/String#substr
    else
      i32.const 9776
    end
    local.tee 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set 1
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 1
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.lt_s
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.const 2
        i32.div_s
        local.get 0
        local.get 2
        i32.const 2
        call $~lib/string/String#substr
        call $~lib/util/string/strtol<i32>
        i32.extend8_s
        call $~lib/typedarray/Uint8Array#__set
        local.get 2
        i32.const 2
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1)
  (func $tests/looks-rare-exchange-utils/createTakerAskEvent (type 7) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i64 i32 i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.set 11
    local.get 0
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 12
    i32.const 10432
    i32.store
    local.get 12
    local.get 0
    i32.store offset=4
    local.get 1
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 10480
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 10528
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 10560
    i32.store
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 10592
    i32.store
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 6560
    i32.store
    local.get 6
    local.get 0
    i32.store offset=4
    local.get 7
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 7584
    i32.store
    local.get 7
    local.get 0
    i32.store offset=4
    local.get 5
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 7696
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 8
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 8
    i32.const 7744
    i32.store
    local.get 8
    local.get 0
    i32.store offset=4
    local.get 9
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 9
    i32.const 7744
    i32.store
    local.get 9
    local.get 0
    i32.store offset=4
    local.get 11
    i32.load
    local.set 13
    local.get 11
    i32.load offset=4
    local.set 14
    local.get 11
    i32.load offset=8
    local.set 15
    local.get 11
    i32.load offset=12
    local.set 16
    local.get 11
    i32.load offset=16
    local.set 17
    local.get 11
    i32.load offset=20
    local.set 18
    i32.const 10
    i32.const 29
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 12
    i32.store
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 3
    i32.store offset=12
    local.get 0
    i32.load offset=4
    local.get 4
    i32.store offset=16
    local.get 0
    i32.load offset=4
    local.get 5
    i32.store offset=20
    local.get 0
    i32.load offset=4
    local.get 6
    i32.store offset=24
    local.get 0
    i32.load offset=4
    local.get 7
    i32.store offset=28
    local.get 0
    i32.load offset=4
    local.get 8
    i32.store offset=32
    local.get 0
    i32.load offset=4
    local.get 9
    i32.store offset=36
    local.get 11
    i32.load offset=28
    local.set 1
    i32.const 32
    i32.const 39
    call $~lib/rt/stub/__new
    local.get 13
    local.get 14
    local.get 15
    local.get 16
    local.get 17
    local.get 18
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor)
  (func $generated/LooksRareExchange/LooksRareExchange/TakerAsk__Params#get:orderHash (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    local.tee 0
    i32.load
    i32.const 1
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 2
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 10640
      i32.const 7472
      i32.const 63
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $src/helpers/createTransaction (type 14) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 41
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 13
    local.set 14
    local.get 0
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 15
    i64.store offset=8
    local.get 14
    i32.const 2576
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 13
    local.set 0
    local.get 1
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10432
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10480
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 3
    call $generated/schema/User#get:id
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10528
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 4
    call $generated/schema/User#get:id
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10560
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    local.get 5
    call $generated/schema/RoyaltyPayment#set:currency
    local.get 0
    local.get 6
    call $generated/schema/Item#set:collection
    local.get 12
    i32.const 8464
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 7968
      i32.const 2832
      i32.const 417
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    call $generated/schema/TransactionRoyaltyPayment#set:royaltyPayment
    local.get 7
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10720
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    local.get 8
    call $generated/schema/RoyaltyPayment#set:tokenId
    local.get 0
    local.get 9
    call $generated/schema/RoyaltyPayment#set:item
    local.get 0
    local.get 10
    call $generated/schema/RoyaltyPayment#set:amount
    local.get 11
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    local.get 0
    i32.const 10768
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.const 2576
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 10800
      i32.const 2832
      i32.const 247
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 11092
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 11100
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 11088
        i32.const 11084
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 3104
        call $~lib/util/string/joinStringArray
        i32.const 2832
        i32.const 249
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 11136
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/looks-rare-exchange/handleTakerAsk (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateUser
    local.set 4
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateUser
    local.set 5
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 6
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 6496
    call $~lib/string/String#concat
    local.set 3
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 7
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToHex
    call $~lib/string/String#concat
    local.set 3
    i32.const 8896
    local.get 2
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 7
    if  ;; label = @1
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      call $generated/LooksRareExchange/LooksRareExchange/TakerAsk__Params#get:orderHash
      local.set 8
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 9
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 5
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      local.set 10
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 7
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 11
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 8
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 12
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 2
      local.get 8
      local.get 9
      local.get 4
      local.get 5
      local.get 10
      local.get 6
      i32.const 1
      local.get 11
      local.get 3
      local.get 12
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 9
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.get 7
      call $src/helpers/createTransaction
    end)
  (func $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|3 (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 9552
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 9664
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    local.set 3
    i32.const 10192
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 4
    i32.const 7136
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    i32.const 5968
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    i32.const 10224
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 7
    i32.const 6464
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 8
    i32.const 10336
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 9
    i32.const 10368
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 10
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    local.get 3
    local.get 4
    local.get 1
    local.get 2
    local.get 7
    local.get 5
    local.get 6
    local.get 8
    local.get 9
    local.get 10
    call $tests/looks-rare-exchange-utils/createTakerAskEvent
    call $src/looks-rare-exchange/handleTakerAsk
    i32.const 11136
    local.get 0
    i32.const 7584
    i32.const 6464
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10528
    i32.const 11184
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10560
    i32.const 11296
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 7744
    i32.const 10336
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 8032
    i32.const 11408
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10720
    i32.const 5360
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $tests/looks-rare-exchange-utils/createTakerBidEvent (type 7) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i64 i32 i32 i32 i32 i32 i32 i32 i32)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.set 11
    local.get 0
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 12
    i32.const 10432
    i32.store
    local.get 12
    local.get 0
    i32.store offset=4
    local.get 1
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 10480
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 10528
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 10560
    i32.store
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 10592
    i32.store
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 6560
    i32.store
    local.get 6
    local.get 0
    i32.store offset=4
    local.get 7
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 7584
    i32.store
    local.get 7
    local.get 0
    i32.store offset=4
    local.get 5
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 0
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 7696
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 8
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 8
    i32.const 7744
    i32.store
    local.get 8
    local.get 0
    i32.store offset=4
    local.get 9
    i64.extend_i32_u
    local.set 10
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 10
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 9
    i32.const 7744
    i32.store
    local.get 9
    local.get 0
    i32.store offset=4
    local.get 11
    i32.load
    local.set 13
    local.get 11
    i32.load offset=4
    local.set 14
    local.get 11
    i32.load offset=8
    local.set 15
    local.get 11
    i32.load offset=12
    local.set 16
    local.get 11
    i32.load offset=16
    local.set 17
    local.get 11
    i32.load offset=20
    local.set 18
    i32.const 10
    i32.const 29
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    local.get 0
    i32.load offset=4
    local.get 12
    i32.store
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 3
    i32.store offset=12
    local.get 0
    i32.load offset=4
    local.get 4
    i32.store offset=16
    local.get 0
    i32.load offset=4
    local.get 5
    i32.store offset=20
    local.get 0
    i32.load offset=4
    local.get 6
    i32.store offset=24
    local.get 0
    i32.load offset=4
    local.get 7
    i32.store offset=28
    local.get 0
    i32.load offset=4
    local.get 8
    i32.store offset=32
    local.get 0
    i32.load offset=4
    local.get 9
    i32.store offset=36
    local.get 11
    i32.load offset=28
    local.set 1
    i32.const 32
    i32.const 42
    call $~lib/rt/stub/__new
    local.get 13
    local.get 14
    local.get 15
    local.get 16
    local.get 17
    local.get 18
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Event#constructor)
  (func $src/looks-rare-exchange/handleTakerBid (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateUser
    local.set 3
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $src/helpers/getOrCreateUser
    local.set 4
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 5
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 6496
    call $~lib/string/String#concat
    local.set 1
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 7
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToHex
    call $~lib/string/String#concat
    local.set 6
    i32.const 8896
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.set 2
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 7
    local.get 2
    if  ;; label = @1
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      call $generated/LooksRareExchange/LooksRareExchange/TakerAsk__Params#get:orderHash
      local.set 8
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 9
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 5
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      local.set 10
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 7
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 11
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 8
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 12
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 7
      local.get 8
      local.get 9
      local.get 3
      local.get 4
      local.get 10
      local.get 5
      i32.const 0
      local.get 11
      local.get 6
      local.get 12
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 9
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.get 2
      call $src/helpers/createTransaction
    end)
  (func $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|4 (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 9552
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 1
    i32.const 9664
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromHexString
    local.set 3
    i32.const 10192
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 4
    i32.const 7136
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 5
    i32.const 5968
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    i32.const 10224
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 7
    i32.const 6464
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 8
    i32.const 10336
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 9
    i32.const 10368
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 10
    call $~lib/matchstick-as/assembly/defaults/newMockEvent
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    local.get 3
    local.get 4
    local.get 1
    local.get 2
    local.get 7
    local.get 5
    local.get 6
    local.get 8
    local.get 9
    local.get 10
    call $tests/looks-rare-exchange-utils/createTakerBidEvent
    call $src/looks-rare-exchange/handleTakerBid
    i32.const 11136
    local.get 0
    i32.const 7584
    i32.const 6464
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10528
    i32.const 11184
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10560
    i32.const 11296
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 7744
    i32.const 10336
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 8032
    i32.const 11408
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    i32.const 11136
    local.get 0
    i32.const 10720
    i32.const 5392
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/looks-rare-exchange.test~anonymous|0 (type 3)
    i32.const 6912
    i32.load
    i32.const 6944
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 6992
    i32.load
    i32.const 7024
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 7072
    i32.const 0
    i32.const 9472
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 9504
    i32.const 0
    i32.const 11536
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 11568
    i32.const 0
    i32.const 11616
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                block  ;; label = @135
                                                                                                                                                                                                                                                                                  block  ;; label = @136
                                                                                                                                                                                                                                                                                    block  ;; label = @137
                                                                                                                                                                                                                                                                                      block  ;; label = @138
                                                                                                                                                                                                                                                                                        block  ;; label = @139
                                                                                                                                                                                                                                                                                          block  ;; label = @140
                                                                                                                                                                                                                                                                                            block  ;; label = @141
                                                                                                                                                                                                                                                                                              block  ;; label = @142
                                                                                                                                                                                                                                                                                                block  ;; label = @143
                                                                                                                                                                                                                                                                                                  block  ;; label = @144
                                                                                                                                                                                                                                                                                                    block  ;; label = @145
                                                                                                                                                                                                                                                                                                      block  ;; label = @146
                                                                                                                                                                                                                                                                                                        block  ;; label = @147
                                                                                                                                                                                                                                                                                                          block  ;; label = @148
                                                                                                                                                                                                                                                                                                            block  ;; label = @149
                                                                                                                                                                                                                                                                                                              block  ;; label = @150
                                                                                                                                                                                                                                                                                                                block  ;; label = @151
                                                                                                                                                                                                                                                                                                                  block  ;; label = @152
                                                                                                                                                                                                                                                                                                                    block  ;; label = @153
                                                                                                                                                                                                                                                                                                                      block  ;; label = @154
                                                                                                                                                                                                                                                                                                                        block  ;; label = @155
                                                                                                                                                                                                                                                                                                                          block  ;; label = @156
                                                                                                                                                                                                                                                                                                                            block  ;; label = @157
                                                                                                                                                                                                                                                                                                                              block  ;; label = @158
                                                                                                                                                                                                                                                                                                                                block  ;; label = @159
                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                  if  ;; label = @160
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 1 (;@159;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 2 (;@158;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 3
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 3 (;@157;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 4
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 4 (;@156;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 5
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 5 (;@155;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 6
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 6 (;@154;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 7
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 7 (;@153;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 8
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 8 (;@152;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 9
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 9 (;@151;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 10
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 10 (;@150;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 11
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 11 (;@149;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 12
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 12 (;@148;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 13
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 13 (;@147;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 14
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 14 (;@146;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 15
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 15 (;@145;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 16
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 16 (;@144;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 17
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 17 (;@143;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 18
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 18 (;@142;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 19
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 19 (;@141;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 20
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 20 (;@140;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 21
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 21 (;@139;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 27
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 22 (;@138;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 28
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 23 (;@137;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 29
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 24 (;@136;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 22
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 25 (;@135;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 23
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 26 (;@134;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 24
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 27 (;@133;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 25
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 28 (;@132;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 26
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 29 (;@131;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 30
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 30 (;@130;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 31
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 31 (;@129;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 32
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 32 (;@128;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 33
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 33 (;@127;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 34
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 34 (;@126;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 35
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 35 (;@125;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 36
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 36 (;@124;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 37
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 37 (;@123;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 38
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 38 (;@122;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 39
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 39 (;@121;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 40
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 40 (;@120;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 41
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 41 (;@119;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 42
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 42 (;@118;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 43
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 43 (;@117;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 44
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 44 (;@116;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 45
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 45 (;@115;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 46
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 46 (;@114;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 47
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 47 (;@113;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 48
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 48 (;@112;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 49
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 49 (;@111;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 50
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 50 (;@110;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 51
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 51 (;@109;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 52
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 52 (;@108;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 53
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 53 (;@107;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 54
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 54 (;@106;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 55
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 55 (;@105;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 56
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 56 (;@104;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 57
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 57 (;@103;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 58
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 58 (;@102;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 59
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 59 (;@101;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 60
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 60 (;@100;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 61
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 61 (;@99;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 63
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 62 (;@98;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 64
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 63 (;@97;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 65
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 64 (;@96;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 66
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 65 (;@95;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 67
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 66 (;@94;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 68
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 67 (;@93;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 69
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 68 (;@92;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 70
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 69 (;@91;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 71
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 70 (;@90;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 72
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 71 (;@89;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 73
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 72 (;@88;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 74
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 73 (;@87;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 75
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 74 (;@86;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 76
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 75 (;@85;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 77
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 76 (;@84;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 78
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 77 (;@83;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 79
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 78 (;@82;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 80
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 79 (;@81;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 81
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 80 (;@80;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 82
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 81 (;@79;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 83
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 82 (;@78;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 84
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 83 (;@77;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 85
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 84 (;@76;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 86
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 85 (;@75;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1000
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 86 (;@74;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1001
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 87 (;@73;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1002
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 88 (;@72;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1003
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 89 (;@71;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1500
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 90 (;@70;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1501
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 91 (;@69;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1502
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 92 (;@68;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1503
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 93 (;@67;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1504
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 94 (;@66;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1505
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 95 (;@65;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1506
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 96 (;@64;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1507
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 97 (;@63;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1508
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 98 (;@62;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1509
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 99 (;@61;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1510
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 100 (;@60;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1511
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 101 (;@59;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1512
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 102 (;@58;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1513
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 103 (;@57;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1514
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 104 (;@56;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1515
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 105 (;@55;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1516
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 106 (;@54;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1517
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 107 (;@53;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1518
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 108 (;@52;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1519
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 109 (;@51;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1520
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 110 (;@50;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1521
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 111 (;@49;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1522
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 112 (;@48;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1523
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 113 (;@47;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1524
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 114 (;@46;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1525
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 115 (;@45;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1526
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 116 (;@44;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1527
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 117 (;@43;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1528
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 118 (;@42;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1529
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 119 (;@41;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1530
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 120 (;@40;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1531
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 121 (;@39;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1532
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 122 (;@38;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1533
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 123 (;@37;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1534
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 124 (;@36;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1535
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 125 (;@35;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1536
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 126 (;@34;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1537
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 127 (;@33;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1538
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 128 (;@32;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1539
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 129 (;@31;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1540
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 130 (;@30;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1541
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 131 (;@29;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1542
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 132 (;@28;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1543
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 133 (;@27;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1544
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 134 (;@26;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1545
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 135 (;@25;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1546
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 136 (;@24;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1547
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 137 (;@23;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1548
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 138 (;@22;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1549
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 139 (;@21;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1550
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 140 (;@20;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1551
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 141 (;@19;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1552
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 142 (;@18;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1553
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 143 (;@17;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1554
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 144 (;@16;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1555
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 145 (;@15;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1556
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 146 (;@14;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1557
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 147 (;@13;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1558
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 148 (;@12;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1559
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 149 (;@11;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1560
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 150 (;@10;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 1561
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 151 (;@9;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2500
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 152 (;@8;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2501
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 153 (;@7;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2502
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 154 (;@6;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2503
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 155 (;@5;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2504
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 156 (;@4;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2505
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 157 (;@3;)
                                                                                                                                                                                                                                                                                                                                    local.get 0
                                                                                                                                                                                                                                                                                                                                    i32.const 2506
                                                                                                                                                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                                                                                                                                                    br_if 158 (;@2;)
                                                                                                                                                                                                                                                                                                                                    br 159 (;@1;)
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                i32.const 0
                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                              i32.const 44
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 45
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 46
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 47
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 13
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 48
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 49
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 50
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 51
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 52
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 53
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 55
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 56
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 58
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 60
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 62
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 3
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 64
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 66
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 71
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 72
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 73
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 74
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 75
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 63
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 79
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 80
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 81
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 57
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 59
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 61
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 82
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 67
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 87
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 68
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 87
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 88
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 91
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 93
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 94
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 95
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 96
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 97
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 98
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 99
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 20
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 100
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 101
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 102
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 103
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 105
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 85
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 107
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 108
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 113
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 115
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 117
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 119
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 120
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 106
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 112
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 116
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 121
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 122
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 120
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 104
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 123
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 124
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 125
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 126
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 127
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 128
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 130
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 131
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 132
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 133
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 109
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 134
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 114
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 135
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 111
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 118
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 136
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 137
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 83
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 84
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 56
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 86
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 138
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 139
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 85
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 141
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 144
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 148
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 147
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 164
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 169
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 171
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 179
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 163
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 181
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 175
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 182
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 152
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 20
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 187
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 140
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 159
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 142
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 168
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 158
                                                                                                  return
                                                                                                end
                                                                                                i32.const 186
                                                                                                return
                                                                                              end
                                                                                              i32.const 150
                                                                                              return
                                                                                            end
                                                                                            i32.const 189
                                                                                            return
                                                                                          end
                                                                                          i32.const 145
                                                                                          return
                                                                                        end
                                                                                        i32.const 146
                                                                                        return
                                                                                      end
                                                                                      i32.const 192
                                                                                      return
                                                                                    end
                                                                                    i32.const 151
                                                                                    return
                                                                                  end
                                                                                  i32.const 149
                                                                                  return
                                                                                end
                                                                                i32.const 183
                                                                                return
                                                                              end
                                                                              i32.const 188
                                                                              return
                                                                            end
                                                                            i32.const 176
                                                                            return
                                                                          end
                                                                          i32.const 157
                                                                          return
                                                                        end
                                                                        i32.const 193
                                                                        return
                                                                      end
                                                                      i32.const 155
                                                                      return
                                                                    end
                                                                    i32.const 154
                                                                    return
                                                                  end
                                                                  i32.const 165
                                                                  return
                                                                end
                                                                i32.const 167
                                                                return
                                                              end
                                                              i32.const 166
                                                              return
                                                            end
                                                            i32.const 153
                                                            return
                                                          end
                                                          i32.const 162
                                                          return
                                                        end
                                                        i32.const 184
                                                        return
                                                      end
                                                      i32.const 178
                                                      return
                                                    end
                                                    i32.const 185
                                                    return
                                                  end
                                                  i32.const 20
                                                  return
                                                end
                                                i32.const 156
                                                return
                                              end
                                              i32.const 20
                                              return
                                            end
                                            i32.const 170
                                            return
                                          end
                                          i32.const 143
                                          return
                                        end
                                        i32.const 177
                                        return
                                      end
                                      i32.const 194
                                      return
                                    end
                                    i32.const 173
                                    return
                                  end
                                  i32.const 174
                                  return
                                end
                                i32.const 172
                                return
                              end
                              i32.const 161
                              return
                            end
                            i32.const 190
                            return
                          end
                          i32.const 160
                          return
                        end
                        i32.const 195
                        return
                      end
                      i32.const 180
                      return
                    end
                    i32.const 191
                    return
                  end
                  i32.const 196
                  return
                end
                i32.const 199
                return
              end
              i32.const 197
              return
            end
            i32.const 198
            return
          end
          i32.const 200
          return
        end
        i32.const 201
        return
      end
      i32.const 202
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 3)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 11772
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.get $~lib/matchstick-as/assembly/defaults/defaultAddress
    global.set $~lib/matchstick-as/assembly/defaults/defaultAddressBytes
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/assembly/defaults/defaultBigInt
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/assembly/defaults/defaultIntBytes
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/defaults/defaultAddress
    global.get $~lib/matchstick-as/defaults/defaultAddress
    global.set $~lib/matchstick-as/defaults/defaultAddressBytes
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultBigInt
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultIntBytes
    i32.const 2352
    i32.const 11648
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 8 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TransactionReceipt i32 (i32.const 1000))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Log i32 (i32.const 1001))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayH256 i32 (i32.const 1002))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayLog i32 (i32.const 1003))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAny i32 (i32.const 1500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayAny i32 (i32.const 1501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayBytes i32 (i32.const 1502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayCoin i32 (i32.const 1503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayCommitSig i32 (i32.const 1504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEvent i32 (i32.const 1505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEventAttribute i32 (i32.const 1506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayEvidence i32 (i32.const 1507))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayModeInfo i32 (i32.const 1508))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArraySignerInfo i32 (i32.const 1509))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayTxResult i32 (i32.const 1510))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayValidator i32 (i32.const 1511))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosArrayValidatorUpdate i32 (i32.const 1512))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAuthInfo i32 (i32.const 1513))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlock i32 (i32.const 1514))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockID i32 (i32.const 1515))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockIDFlagEnum i32 (i32.const 1516))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockParams i32 (i32.const 1517))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoin i32 (i32.const 1518))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommit i32 (i32.const 1519))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSig i32 (i32.const 1520))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCompactBitArray i32 (i32.const 1521))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensus i32 (i32.const 1522))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensusParams i32 (i32.const 1523))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuplicateVoteEvidence i32 (i32.const 1524))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuration i32 (i32.const 1525))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvent i32 (i32.const 1526))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttribute i32 (i32.const 1527))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventData i32 (i32.const 1528))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventVote i32 (i32.const 1529))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidence i32 (i32.const 1530))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceList i32 (i32.const 1531))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceParams i32 (i32.const 1532))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosFee i32 (i32.const 1533))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeader i32 (i32.const 1534))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeaderOnlyBlock i32 (i32.const 1535))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightBlock i32 (i32.const 1536))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightClientAttackEvidence i32 (i32.const 1537))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfo i32 (i32.const 1538))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoMulti i32 (i32.const 1539))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoSingle i32 (i32.const 1540))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPartSetHeader i32 (i32.const 1541))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPublicKey i32 (i32.const 1542))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseBeginBlock i32 (i32.const 1543))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseDeliverTx i32 (i32.const 1544))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseEndBlock i32 (i32.const 1545))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignModeEnum i32 (i32.const 1546))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedHeader i32 (i32.const 1547))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedMsgTypeEnum i32 (i32.const 1548))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfo i32 (i32.const 1549))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTimestamp i32 (i32.const 1550))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTip i32 (i32.const 1551))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionData i32 (i32.const 1552))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTx i32 (i32.const 1553))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxBody i32 (i32.const 1554))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResult i32 (i32.const 1555))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidator i32 (i32.const 1556))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorParams i32 (i32.const 1557))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSet i32 (i32.const 1558))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSetUpdates i32 (i32.const 1559))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdate i32 (i32.const 1560))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosVersionParams i32 (i32.const 1561))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveBlock i32 (i32.const 2500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveProofOfAccess i32 (i32.const 2501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTag i32 (i32.const 2502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTagArray i32 (i32.const 2503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransaction i32 (i32.const 2504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionArray i32 (i32.const 2505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionWithBlockPtr i32 (i32.const 2506))
  (global $~started (mut i32) (i32.const 0))
  (export "TypeId.String" (global 9))
  (export "TypeId.ArrayBuffer" (global 10))
  (export "TypeId.Int8Array" (global 11))
  (export "TypeId.Int16Array" (global 12))
  (export "TypeId.Int32Array" (global 13))
  (export "TypeId.Int64Array" (global 14))
  (export "TypeId.Uint8Array" (global 15))
  (export "TypeId.Uint16Array" (global 16))
  (export "TypeId.Uint32Array" (global 17))
  (export "TypeId.Uint64Array" (global 18))
  (export "TypeId.Float32Array" (global 19))
  (export "TypeId.Float64Array" (global 20))
  (export "TypeId.BigDecimal" (global 21))
  (export "TypeId.ArrayBool" (global 22))
  (export "TypeId.ArrayUint8Array" (global 23))
  (export "TypeId.ArrayEthereumValue" (global 24))
  (export "TypeId.ArrayStoreValue" (global 25))
  (export "TypeId.ArrayJsonValue" (global 26))
  (export "TypeId.ArrayString" (global 27))
  (export "TypeId.ArrayEventParam" (global 28))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 29))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 30))
  (export "TypeId.SmartContractCall" (global 31))
  (export "TypeId.EventParam" (global 32))
  (export "TypeId.EthereumTransaction" (global 33))
  (export "TypeId.EthereumBlock" (global 34))
  (export "TypeId.EthereumCall" (global 35))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 36))
  (export "TypeId.WrappedBool" (global 37))
  (export "TypeId.WrappedJsonValue" (global 38))
  (export "TypeId.EthereumValue" (global 39))
  (export "TypeId.StoreValue" (global 40))
  (export "TypeId.JsonValue" (global 41))
  (export "TypeId.EthereumEvent" (global 42))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 43))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 44))
  (export "TypeId.TypedMapStringStoreValue" (global 45))
  (export "TypeId.TypedMapStringJsonValue" (global 46))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 47))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 48))
  (export "TypeId.ResultJsonValueBool" (global 49))
  (export "TypeId.ArrayU8" (global 50))
  (export "TypeId.ArrayU16" (global 51))
  (export "TypeId.ArrayU32" (global 52))
  (export "TypeId.ArrayU64" (global 53))
  (export "TypeId.ArrayI8" (global 54))
  (export "TypeId.ArrayI16" (global 55))
  (export "TypeId.ArrayI32" (global 56))
  (export "TypeId.ArrayI64" (global 57))
  (export "TypeId.ArrayF32" (global 58))
  (export "TypeId.ArrayF64" (global 59))
  (export "TypeId.ArrayBigDecimal" (global 60))
  (export "TypeId.NearArrayDataReceiver" (global 61))
  (export "TypeId.NearArrayCryptoHash" (global 62))
  (export "TypeId.NearArrayActionValue" (global 63))
  (export "TypeId.NearMerklePath" (global 64))
  (export "TypeId.NearArrayValidatorStake" (global 65))
  (export "TypeId.NearArraySlashedValidator" (global 66))
  (export "TypeId.NearArraySignature" (global 67))
  (export "TypeId.NearArrayChunkHeader" (global 68))
  (export "TypeId.NearAccessKeyPermissionValue" (global 69))
  (export "TypeId.NearActionValue" (global 70))
  (export "TypeId.NearDirection" (global 71))
  (export "TypeId.NearPublicKey" (global 72))
  (export "TypeId.NearSignature" (global 73))
  (export "TypeId.NearFunctionCallPermission" (global 74))
  (export "TypeId.NearFullAccessPermission" (global 75))
  (export "TypeId.NearAccessKey" (global 76))
  (export "TypeId.NearDataReceiver" (global 77))
  (export "TypeId.NearCreateAccountAction" (global 78))
  (export "TypeId.NearDeployContractAction" (global 79))
  (export "TypeId.NearFunctionCallAction" (global 80))
  (export "TypeId.NearTransferAction" (global 81))
  (export "TypeId.NearStakeAction" (global 82))
  (export "TypeId.NearAddKeyAction" (global 83))
  (export "TypeId.NearDeleteKeyAction" (global 84))
  (export "TypeId.NearDeleteAccountAction" (global 85))
  (export "TypeId.NearActionReceipt" (global 86))
  (export "TypeId.NearSuccessStatus" (global 87))
  (export "TypeId.NearMerklePathItem" (global 88))
  (export "TypeId.NearExecutionOutcome" (global 89))
  (export "TypeId.NearSlashedValidator" (global 90))
  (export "TypeId.NearBlockHeader" (global 91))
  (export "TypeId.NearValidatorStake" (global 92))
  (export "TypeId.NearChunkHeader" (global 93))
  (export "TypeId.NearBlock" (global 94))
  (export "TypeId.NearReceiptWithOutcome" (global 95))
  (export "TypeId.TransactionReceipt" (global 96))
  (export "TypeId.Log" (global 97))
  (export "TypeId.ArrayH256" (global 98))
  (export "TypeId.ArrayLog" (global 99))
  (export "TypeId.CosmosAny" (global 100))
  (export "TypeId.CosmosArrayAny" (global 101))
  (export "TypeId.CosmosArrayBytes" (global 102))
  (export "TypeId.CosmosArrayCoin" (global 103))
  (export "TypeId.CosmosArrayCommitSig" (global 104))
  (export "TypeId.CosmosArrayEvent" (global 105))
  (export "TypeId.CosmosArrayEventAttribute" (global 106))
  (export "TypeId.CosmosArrayEvidence" (global 107))
  (export "TypeId.CosmosArrayModeInfo" (global 108))
  (export "TypeId.CosmosArraySignerInfo" (global 109))
  (export "TypeId.CosmosArrayTxResult" (global 110))
  (export "TypeId.CosmosArrayValidator" (global 111))
  (export "TypeId.CosmosArrayValidatorUpdate" (global 112))
  (export "TypeId.CosmosAuthInfo" (global 113))
  (export "TypeId.CosmosBlock" (global 114))
  (export "TypeId.CosmosBlockID" (global 115))
  (export "TypeId.CosmosBlockIDFlagEnum" (global 116))
  (export "TypeId.CosmosBlockParams" (global 117))
  (export "TypeId.CosmosCoin" (global 118))
  (export "TypeId.CosmosCommit" (global 119))
  (export "TypeId.CosmosCommitSig" (global 120))
  (export "TypeId.CosmosCompactBitArray" (global 121))
  (export "TypeId.CosmosConsensus" (global 122))
  (export "TypeId.CosmosConsensusParams" (global 123))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 124))
  (export "TypeId.CosmosDuration" (global 125))
  (export "TypeId.CosmosEvent" (global 126))
  (export "TypeId.CosmosEventAttribute" (global 127))
  (export "TypeId.CosmosEventData" (global 128))
  (export "TypeId.CosmosEventVote" (global 129))
  (export "TypeId.CosmosEvidence" (global 130))
  (export "TypeId.CosmosEvidenceList" (global 131))
  (export "TypeId.CosmosEvidenceParams" (global 132))
  (export "TypeId.CosmosFee" (global 133))
  (export "TypeId.CosmosHeader" (global 134))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 135))
  (export "TypeId.CosmosLightBlock" (global 136))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 137))
  (export "TypeId.CosmosModeInfo" (global 138))
  (export "TypeId.CosmosModeInfoMulti" (global 139))
  (export "TypeId.CosmosModeInfoSingle" (global 140))
  (export "TypeId.CosmosPartSetHeader" (global 141))
  (export "TypeId.CosmosPublicKey" (global 142))
  (export "TypeId.CosmosResponseBeginBlock" (global 143))
  (export "TypeId.CosmosResponseDeliverTx" (global 144))
  (export "TypeId.CosmosResponseEndBlock" (global 145))
  (export "TypeId.CosmosSignModeEnum" (global 146))
  (export "TypeId.CosmosSignedHeader" (global 147))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 148))
  (export "TypeId.CosmosSignerInfo" (global 149))
  (export "TypeId.CosmosTimestamp" (global 150))
  (export "TypeId.CosmosTip" (global 151))
  (export "TypeId.CosmosTransactionData" (global 152))
  (export "TypeId.CosmosTx" (global 153))
  (export "TypeId.CosmosTxBody" (global 154))
  (export "TypeId.CosmosTxResult" (global 155))
  (export "TypeId.CosmosValidator" (global 156))
  (export "TypeId.CosmosValidatorParams" (global 157))
  (export "TypeId.CosmosValidatorSet" (global 158))
  (export "TypeId.CosmosValidatorSetUpdates" (global 159))
  (export "TypeId.CosmosValidatorUpdate" (global 160))
  (export "TypeId.CosmosVersionParams" (global 161))
  (export "TypeId.ArweaveBlock" (global 162))
  (export "TypeId.ArweaveProofOfAccess" (global 163))
  (export "TypeId.ArweaveTag" (global 164))
  (export "TypeId.ArweaveTagArray" (global 165))
  (export "TypeId.ArweaveTransaction" (global 166))
  (export "TypeId.ArweaveTransactionArray" (global 167))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 168))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|0 $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|1 $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|2 $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|3 $start:tests/looks-rare-exchange.test~anonymous|0~anonymous|4 $start:tests/looks-rare-exchange.test~anonymous|0)
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "\1c")
  (data (;5;) (i32.const 1176) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;6;) (i32.const 1196) "\1c")
  (data (;7;) (i32.const 1208) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;8;) (i32.const 1228) ",")
  (data (;9;) (i32.const 1240) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;10;) (i32.const 1276) "\1c")
  (data (;11;) (i32.const 1288) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;12;) (i32.const 1308) "\1c")
  (data (;13;) (i32.const 1320) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;14;) (i32.const 1340) "\1c")
  (data (;15;) (i32.const 1352) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;16;) (i32.const 1372) "\1c")
  (data (;17;) (i32.const 1384) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;18;) (i32.const 1404) "\1c")
  (data (;19;) (i32.const 1416) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;20;) (i32.const 1436) "<")
  (data (;21;) (i32.const 1452) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;22;) (i32.const 1500) ",")
  (data (;23;) (i32.const 1512) "\03\00\00\00\10\00\00\00\b0\05\00\00\b0\05\00\00 \00\00\00\08")
  (data (;24;) (i32.const 1548) "l")
  (data (;25;) (i32.const 1560) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;26;) (i32.const 1660) ",")
  (data (;27;) (i32.const 1672) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;28;) (i32.const 1708) ",")
  (data (;29;) (i32.const 1720) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;30;) (i32.const 1756) ",")
  (data (;31;) (i32.const 1768) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;32;) (i32.const 1804) "l")
  (data (;33;) (i32.const 1816) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;34;) (i32.const 1916) "<")
  (data (;35;) (i32.const 1928) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;36;) (i32.const 1980) "<")
  (data (;37;) (i32.const 1992) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;38;) (i32.const 2044) "<")
  (data (;39;) (i32.const 2056) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;40;) (i32.const 2108) "<")
  (data (;41;) (i32.const 2120) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;42;) (i32.const 2172) "\9c")
  (data (;43;) (i32.const 2184) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;44;) (i32.const 2332) "L")
  (data (;45;) (i32.const 2344) "\01\00\00\004\00\00\00D\00e\00s\00c\00r\00i\00b\00e\00 \00e\00n\00t\00i\00t\00y\00 \00a\00s\00s\00e\00r\00t\00i\00o\00n\00s")
  (data (;46;) (i32.const 2412) "l")
  (data (;47;) (i32.const 2424) "\01\00\00\00T\00\00\000\00x\003\007\00c\00e\00B\004\00b\00A\000\009\003\00D\004\000\002\003\004\00c\006\00f\00B\003\001\002\00d\009\007\009\001\00B\006\007\00c\000\004\00e\00F\004\009\00A")
  (data (;48;) (i32.const 2524) "\1c")
  (data (;49;) (i32.const 2536) "\01\00\00\00\08\00\00\00U\00s\00e\00r")
  (data (;50;) (i32.const 2556) "\1c")
  (data (;51;) (i32.const 2568) "\01\00\00\00\04\00\00\00i\00d")
  (data (;52;) (i32.const 2588) "|")
  (data (;53;) (i32.const 2600) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;54;) (i32.const 2716) "\5c")
  (data (;55;) (i32.const 2728) "\01\00\00\00J\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00U\00s\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;56;) (i32.const 2812) "<")
  (data (;57;) (i32.const 2824) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;58;) (i32.const 2876) "\9c")
  (data (;59;) (i32.const 2888) "\01\00\00\00\82\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00U\00s\00e\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;60;) (i32.const 3036) ",")
  (data (;61;) (i32.const 3048) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;62;) (i32.const 3084) "\1c")
  (data (;63;) (i32.const 3096) "\01")
  (data (;64;) (i32.const 3116) ",")
  (data (;65;) (i32.const 3128) "\10\00\00\00\14\00\00\00P\0b\00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;66;) (i32.const 3164) "<")
  (data (;67;) (i32.const 3176) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;68;) (i32.const 3228) "l")
  (data (;69;) (i32.const 3240) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;70;) (i32.const 3340) "<")
  (data (;71;) (i32.const 3352) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;72;) (i32.const 3404) "|")
  (data (;73;) (i32.const 3416) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;74;) (i32.const 3532) "<")
  (data (;75;) (i32.const 3544) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;76;) (i32.const 3596) "\1c")
  (data (;77;) (i32.const 3608) "\01\00\00\00\02\00\00\000")
  (data (;78;) (i32.const 3628) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;79;) (i32.const 4028) "\1c\04")
  (data (;80;) (i32.const 4040) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;81;) (i32.const 5084) "\5c")
  (data (;82;) (i32.const 5096) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;83;) (i32.const 5180) "L")
  (data (;84;) (i32.const 5192) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;85;) (i32.const 5260) "L")
  (data (;86;) (i32.const 5272) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;87;) (i32.const 5340) "\1c")
  (data (;88;) (i32.const 5352) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;89;) (i32.const 5372) "\1c")
  (data (;90;) (i32.const 5384) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;91;) (i32.const 5404) "<")
  (data (;92;) (i32.const 5416) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;93;) (i32.const 5468) "\1c")
  (data (;94;) (i32.const 5480) "\01\00\00\00\02\00\00\00[")
  (data (;95;) (i32.const 5500) "\1c")
  (data (;96;) (i32.const 5512) "\13\00\00\00\08\00\00\00\01")
  (data (;97;) (i32.const 5532) "\1c")
  (data (;98;) (i32.const 5544) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;99;) (i32.const 5564) "\1c")
  (data (;100;) (i32.const 5576) "\01\00\00\00\02\00\00\00]")
  (data (;101;) (i32.const 5596) "L")
  (data (;102;) (i32.const 5608) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;103;) (i32.const 5676) "<")
  (data (;104;) (i32.const 5688) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;105;) (i32.const 5740) "<")
  (data (;106;) (i32.const 5752) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;107;) (i32.const 5804) "\1c")
  (data (;108;) (i32.const 5816) "\01\00\00\00\02\00\00\00)")
  (data (;109;) (i32.const 5836) "\1c")
  (data (;110;) (i32.const 5848) "\10\00\00\00\0c\00\00\00\80\16\00\00\00\00\00\00\c0\16")
  (data (;111;) (i32.const 5868) ",")
  (data (;112;) (i32.const 5880) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;113;) (i32.const 5916) "\1c")
  (data (;114;) (i32.const 5928) "\10\00\00\00\0c\00\00\00\00\17\00\00\00\00\00\00\c0\16")
  (data (;115;) (i32.const 5948) "l")
  (data (;116;) (i32.const 5960) "\01\00\00\00T\00\00\000\00x\003\004\00d\008\005\00c\009\00C\00D\00e\00B\002\003\00F\00A\009\007\00c\00b\000\008\003\003\003\00b\005\001\001\00a\00c\008\006\00E\001\00C\004\00E\002\005\008")
  (data (;117;) (i32.const 6060) ",")
  (data (;118;) (i32.const 6072) "\01\00\00\00\14\00\00\00C\00o\00l\00l\00e\00c\00t\00i\00o\00n")
  (data (;119;) (i32.const 6108) "l")
  (data (;120;) (i32.const 6120) "\01\00\00\00V\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00C\00o\00l\00l\00e\00c\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;121;) (i32.const 6220) "\ac")
  (data (;122;) (i32.const 6232) "\01\00\00\00\8e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00C\00o\00l\00l\00e\00c\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;123;) (i32.const 6396) ",")
  (data (;124;) (i32.const 6408) "\10\00\00\00\14\00\00\00`\18\00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;125;) (i32.const 6444) "\1c")
  (data (;126;) (i32.const 6456) "\01\00\00\00\0a\00\00\007\003\004\006\007")
  (data (;127;) (i32.const 6476) "\1c")
  (data (;128;) (i32.const 6488) "\01\00\00\00\02\00\00\00-")
  (data (;129;) (i32.const 6508) "\1c")
  (data (;130;) (i32.const 6520) "\01\00\00\00\08\00\00\00I\00t\00e\00m")
  (data (;131;) (i32.const 6540) ",")
  (data (;132;) (i32.const 6552) "\01\00\00\00\14\00\00\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n")
  (data (;133;) (i32.const 6588) "\5c")
  (data (;134;) (i32.const 6600) "\01\00\00\00J\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00I\00t\00e\00m\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;135;) (i32.const 6684) "\9c")
  (data (;136;) (i32.const 6696) "\01\00\00\00\82\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00I\00t\00e\00m\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;137;) (i32.const 6844) ",")
  (data (;138;) (i32.const 6856) "\10\00\00\00\14\00\00\000\1a\00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;139;) (i32.const 6892) "\1c")
  (data (;140;) (i32.const 6904) "\17\00\00\00\08\00\00\00\02")
  (data (;141;) (i32.const 6924) ",")
  (data (;142;) (i32.const 6936) "\01\00\00\00\12\00\00\00b\00e\00f\00o\00r\00e\00A\00l\00l")
  (data (;143;) (i32.const 6972) "\1c")
  (data (;144;) (i32.const 6984) "\17\00\00\00\08\00\00\00\03")
  (data (;145;) (i32.const 7004) ",")
  (data (;146;) (i32.const 7016) "\01\00\00\00\10\00\00\00a\00f\00t\00e\00r\00A\00l\00l")
  (data (;147;) (i32.const 7052) "<")
  (data (;148;) (i32.const 7064) "\01\00\00\00\1e\00\00\00U\00s\00e\00r\00 \00i\00s\00 \00c\00r\00e\00a\00t\00e\00d")
  (data (;149;) (i32.const 7116) "l")
  (data (;150;) (i32.const 7128) "\01\00\00\00T\00\00\000\00x\00C\000\002\00a\00a\00A\003\009\00b\002\002\003\00F\00E\008\00D\000\00A\000\00e\005\00C\004\00F\002\007\00e\00A\00D\009\000\008\003\00C\007\005\006\00C\00c\002")
  (data (;151;) (i32.const 7228) "<")
  (data (;152;) (i32.const 7240) "\01\00\00\00 \00\00\006\000\002\007\004\009\009\009\009\009\005\000\000\000\000\000")
  (data (;153;) (i32.const 7292) "\1c")
  (data (;154;) (i32.const 7324) "\1c")
  (data (;155;) (i32.const 7356) "\5c")
  (data (;156;) (i32.const 7368) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;157;) (i32.const 7452) "l")
  (data (;158;) (i32.const 7464) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;159;) (i32.const 7564) ",")
  (data (;160;) (i32.const 7576) "\01\00\00\00\0e\00\00\00t\00o\00k\00e\00n\00I\00d")
  (data (;161;) (i32.const 7612) "<")
  (data (;162;) (i32.const 7624) "\01\00\00\00 \00\00\00r\00o\00y\00a\00l\00t\00y\00R\00e\00c\00i\00p\00i\00e\00n\00t")
  (data (;163;) (i32.const 7676) ",")
  (data (;164;) (i32.const 7688) "\01\00\00\00\10\00\00\00c\00u\00r\00r\00e\00n\00c\00y")
  (data (;165;) (i32.const 7724) "\1c")
  (data (;166;) (i32.const 7736) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
  (data (;167;) (i32.const 7756) "\5c")
  (data (;168;) (i32.const 7768) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;169;) (i32.const 7852) "\5c")
  (data (;170;) (i32.const 7864) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;171;) (i32.const 7948) "<")
  (data (;172;) (i32.const 7960) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;173;) (i32.const 8012) "\1c")
  (data (;174;) (i32.const 8024) "\01\00\00\00\08\00\00\00i\00t\00e\00m")
  (data (;175;) (i32.const 8044) "|")
  (data (;176;) (i32.const 8056) "\01\00\00\00^\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;177;) (i32.const 8172) "\ac")
  (data (;178;) (i32.const 8184) "\01\00\00\00\96\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;179;) (i32.const 8348) ",")
  (data (;180;) (i32.const 8360) "\10\00\00\00\14\00\00\00\00 \00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;181;) (i32.const 8396) ",")
  (data (;182;) (i32.const 8408) "\01\00\00\00\1c\00\00\00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t")
  (data (;183;) (i32.const 8444) ",")
  (data (;184;) (i32.const 8456) "\01\00\00\00\1c\00\00\00r\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t")
  (data (;185;) (i32.const 8492) "\8c")
  (data (;186;) (i32.const 8504) "\01\00\00\00t\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;187;) (i32.const 8636) "\bc")
  (data (;188;) (i32.const 8648) "\01\00\00\00\ac\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;189;) (i32.const 8828) ",")
  (data (;190;) (i32.const 8840) "\10\00\00\00\14\00\00\00\d0!\00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;191;) (i32.const 8876) "L")
  (data (;192;) (i32.const 8888) "\01\00\00\002\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00R\00o\00y\00a\00l\00t\00y\00P\00a\00y\00m\00e\00n\00t")
  (data (;193;) (i32.const 8956) "<")
  (data (;194;) (i32.const 8968) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;195;) (i32.const 9020) "\5c")
  (data (;196;) (i32.const 9032) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;197;) (i32.const 9116) "l")
  (data (;198;) (i32.const 9128) "\01\00\00\00T\00\00\000\00x\003\007\00c\00e\00b\004\00b\00a\000\009\003\00d\004\000\002\003\004\00c\006\00f\00b\003\001\002\00d\009\007\009\001\00b\006\007\00c\000\004\00e\00f\004\009\00a")
  (data (;199;) (i32.const 9228) "l")
  (data (;200;) (i32.const 9240) "\01\00\00\00T\00\00\000\00x\00c\000\002\00a\00a\00a\003\009\00b\002\002\003\00f\00e\008\00d\000\00a\000\00e\005\00c\004\00f\002\007\00e\00a\00d\009\000\008\003\00c\007\005\006\00c\00c\002")
  (data (;201;) (i32.const 9340) "l")
  (data (;202;) (i32.const 9352) "\01\00\00\00T\00\00\000\00x\003\004\00d\008\005\00c\009\00c\00d\00e\00b\002\003\00f\00a\009\007\00c\00b\000\008\003\003\003\00b\005\001\001\00a\00c\008\006\00e\001\00c\004\00e\002\005\008")
  (data (;203;) (i32.const 9452) "\1c")
  (data (;204;) (i32.const 9464) "\17\00\00\00\08\00\00\00\04")
  (data (;205;) (i32.const 9484) ",")
  (data (;206;) (i32.const 9496) "\01\00\00\00\1a\00\00\00T\00e\00s\00t\00 \00t\00a\00k\00e\00r\00A\00s\00k")
  (data (;207;) (i32.const 9532) "l")
  (data (;208;) (i32.const 9544) "\01\00\00\00T\00\00\000\00x\001\003\009\002\008\00e\00B\009\00A\008\006\00c\008\002\007\008\00a\004\005\00B\006\00f\00F\002\009\003\005\00c\007\007\003\000\00b\005\008\00A\00C\006\007\005")
  (data (;209;) (i32.const 9644) "l")
  (data (;210;) (i32.const 9656) "\01\00\00\00T\00\00\000\00x\002\000\00D\005\001\00d\009\00B\005\002\008\00c\009\00f\00e\00B\00B\000\004\002\004\003\003\007\00A\007\006\00e\001\00E\008\002\009\009\00A\00e\009\00a\00a\00a")
  (data (;211;) (i32.const 9756) "\9c")
  (data (;212;) (i32.const 9768) "\01\00\00\00\80\00\00\005\00C\005\001\001\00D\00C\003\000\00E\004\007\005\00A\002\002\00F\00E\00F\00A\003\00E\001\00F\00F\003\00E\008\005\008\007\002\005\005\009\004\008\007\00D\007\003\006\00A\00A\008\005\00B\00E\008\005\00A\002\00E\00B\00C\001\00D\00F\00C\00F\00D\00C\000\00D")
  (data (;213;) (i32.const 9916) "\1c")
  (data (;214;) (i32.const 9928) "\01\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
  (data (;215;) (i32.const 9948) "<")
  (data (;216;) (i32.const 9960) "\01\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;217;) (i32.const 10012) "|")
  (data (;218;) (i32.const 10024) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;219;) (i32.const 10140) "\1c")
  (data (;220;) (i32.const 10152) "\01\00\00\00\02\00\00\00x")
  (data (;221;) (i32.const 10172) "\1c")
  (data (;222;) (i32.const 10184) "\01\00\00\00\06\00\00\001\005\004")
  (data (;223;) (i32.const 10204) "l")
  (data (;224;) (i32.const 10216) "\01\00\00\00T\00\00\000\00x\005\007\009\00a\00f\006\00F\00D\003\000\00B\00F\008\003\00a\005\00A\00c\000\00D\006\003\006\00b\00c\006\001\009\00f\009\008\00D\00B\00d\00e\00b\009\003\000\00c")
  (data (;225;) (i32.const 10316) "\1c")
  (data (;226;) (i32.const 10328) "\01\00\00\00\02\00\00\001")
  (data (;227;) (i32.const 10348) "<")
  (data (;228;) (i32.const 10360) "\01\00\00\00&\00\00\001\002\000\005\004\009\009\009\009\009\009\000\000\000\000\000\000\000\000")
  (data (;229;) (i32.const 10412) ",")
  (data (;230;) (i32.const 10424) "\01\00\00\00\12\00\00\00o\00r\00d\00e\00r\00H\00a\00s\00h")
  (data (;231;) (i32.const 10460) ",")
  (data (;232;) (i32.const 10472) "\01\00\00\00\14\00\00\00o\00r\00d\00e\00r\00N\00o\00n\00c\00e")
  (data (;233;) (i32.const 10508) "\1c")
  (data (;234;) (i32.const 10520) "\01\00\00\00\0a\00\00\00t\00a\00k\00e\00r")
  (data (;235;) (i32.const 10540) "\1c")
  (data (;236;) (i32.const 10552) "\01\00\00\00\0a\00\00\00m\00a\00k\00e\00r")
  (data (;237;) (i32.const 10572) ",")
  (data (;238;) (i32.const 10584) "\01\00\00\00\10\00\00\00s\00t\00r\00a\00t\00e\00g\00y")
  (data (;239;) (i32.const 10620) "L")
  (data (;240;) (i32.const 10632) "\01\00\00\008\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00b\00y\00t\00e\00s\00.")
  (data (;241;) (i32.const 10700) ",")
  (data (;242;) (i32.const 10712) "\01\00\00\00\14\00\00\00i\00s\00T\00a\00k\00e\00r\00A\00s\00k")
  (data (;243;) (i32.const 10748) "\1c")
  (data (;244;) (i32.const 10760) "\01\00\00\00\0a\00\00\00p\00r\00i\00c\00e")
  (data (;245;) (i32.const 10780) "l")
  (data (;246;) (i32.const 10792) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;247;) (i32.const 10892) "\ac")
  (data (;248;) (i32.const 10904) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;249;) (i32.const 11068) ",")
  (data (;250;) (i32.const 11080) "\10\00\00\00\14\00\00\00\a0*\00\00\00\00\00\00\f0\0b\00\00\00\00\00\00 \0c")
  (data (;251;) (i32.const 11116) ",")
  (data (;252;) (i32.const 11128) "\01\00\00\00\16\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n")
  (data (;253;) (i32.const 11164) "l")
  (data (;254;) (i32.const 11176) "\01\00\00\00T\00\00\000\00x\001\003\009\002\008\00e\00b\009\00a\008\006\00c\008\002\007\008\00a\004\005\00b\006\00f\00f\002\009\003\005\00c\007\007\003\000\00b\005\008\00a\00c\006\007\005")
  (data (;255;) (i32.const 11276) "l")
  (data (;256;) (i32.const 11288) "\01\00\00\00T\00\00\000\00x\002\000\00d\005\001\00d\009\00b\005\002\008\00c\009\00f\00e\00b\00b\000\004\002\004\003\003\007\00a\007\006\00e\001\00e\008\002\009\009\00a\00e\009\00a\00a\00a")
  (data (;257;) (i32.const 11388) "|")
  (data (;258;) (i32.const 11400) "\01\00\00\00d\00\00\000\00x\003\004\00d\008\005\00c\009\00c\00d\00e\00b\002\003\00f\00a\009\007\00c\00b\000\008\003\003\003\00b\005\001\001\00a\00c\008\006\00e\001\00c\004\00e\002\005\008\00-\000\00x\001\001\00e\00f\00b")
  (data (;259;) (i32.const 11516) "\1c")
  (data (;260;) (i32.const 11528) "\17\00\00\00\08\00\00\00\05")
  (data (;261;) (i32.const 11548) ",")
  (data (;262;) (i32.const 11560) "\01\00\00\00\1a\00\00\00T\00e\00s\00t\00 \00t\00a\00k\00e\00r\00B\00i\00d")
  (data (;263;) (i32.const 11596) "\1c")
  (data (;264;) (i32.const 11608) "\17\00\00\00\08\00\00\00\06")
  (data (;265;) (i32.const 11628) "\1c")
  (data (;266;) (i32.const 11640) "\17\00\00\00\08\00\00\00\07")
  (data (;267;) (i32.const 11660) "<")
  (data (;268;) (i32.const 11676) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;269;) (i32.const 11724) ",")
  (data (;270;) (i32.const 11736) "\03\00\00\00\10\00\00\00\a0-\00\00\a0-\00\00 \00\00\00\08"))
