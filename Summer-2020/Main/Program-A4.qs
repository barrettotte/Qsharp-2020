namespace A4 {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;

    operation Solve (unitary : ((Double, Qubit) => Unit is Adj+Ctl)) : Int {
        mutable result = 0;
        let angle = (2.0 * PI());

        using(qs = (Qubit[2])){
            H(qs[0]);
            Controlled unitary(qs[0..0], (angle, qs[1]));
            
            set result = MResetX(qs[0]) == One ? 0 | 1;

            ResetAll(qs);
        }
        return result;
    }
}