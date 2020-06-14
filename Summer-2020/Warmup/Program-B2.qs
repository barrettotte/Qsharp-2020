namespace B2 {

    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Intrinsic;

    operation Solve(register: LittleEndian): Unit is Adj+Ctl {
        let bits = register!;

        // Quantum Katas - UnitaryPatterns.qs
        X(bits[0]);
        for(i in 1..Length(bits)-1){
            Controlled X(bits[0..i-1], bits[i]);
        }
    }
}