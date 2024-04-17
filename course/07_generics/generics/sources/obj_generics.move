module generics::obj_generics {
    use sui::object::UID;

    public struct Box1 {
        value: u64
     }

    public struct Box2<T> {
        value: T
    }

    public struct Box3<T: store + drop> has key, store {
        id:UID,
        value: T
    }
}

