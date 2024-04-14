module ability::errors {

    const ErrMustGet10 :u64 = 0x1;


    fun init(ctx: &mut TxContext) {

    }

    public fun input(num:u32):u32{
        if(num > 10){
            num
        }else {
            abort 0
        }
    }

    public fun intput2(num:u32):u32{
        assert!(num>10, ErrMustGet10);

        num
    }
}
