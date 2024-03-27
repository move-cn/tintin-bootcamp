module flow_con::if_con {


    use sui::tx_context::TxContext;

    fun init(ctx: &mut TxContext) {

        let x:u32 = 10;
        if (x > 5)  x = x - 5;


        let y = 10;
        if (y <= 10) y = y + 1 else y = 10;




    }

    fun max(a:u32,b:u32){
        if(a > b){
            return a;
        }else {
            return b;
        }
    }

}
