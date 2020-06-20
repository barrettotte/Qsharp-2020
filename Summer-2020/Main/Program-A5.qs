namespace Solution {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation Solve (theta : Double, unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0;
        mutable totalAngle = 0.0;

        using(q = Qubit()){
            repeat{
                unitary(q);
                set totalAngle = totalAngle + theta;
            } until(totalAngle >= 1.0);

            set result = MResetZ(q) == Zero ? 0 | 1;
            Reset(q);
        }
        return result;
    }
}