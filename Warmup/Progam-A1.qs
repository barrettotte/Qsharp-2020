namespace Solution {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable isIdentity = 0;

        using(q = Qubit()){
            if(M(q) == One){
                X(q);
            }
            unitary(q);

            if(M(q) == Zero){
                set isIdentity = 0;
            } else{
                set isIdentity = 1;
            }
            Reset(q);
        }
        return isIdentity;
    }
}

