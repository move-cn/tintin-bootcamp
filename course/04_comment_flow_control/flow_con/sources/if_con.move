module flow_con::if_con {


    use sui::tx_context::TxContext;

    fun init(ctx: &mut TxContext) {

    }

    fun max(a:u32,b:u32){
        if(a > b){
            return a;
        }else {
            return b;
        }
    }

}
