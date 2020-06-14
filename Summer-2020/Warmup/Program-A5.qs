namespace Solution {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0;

        using(q = Qubit()){


            Reset(q);
        }
        return result;
    }
}
