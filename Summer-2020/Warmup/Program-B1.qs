namespace B1 {
    
    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Intrinsic;

    operation Solve(register: LittleEndian): Unit is Adj+Ctl {
        let bits = register!; // ! - unwrap operator (LittleEndian -> Qubit[])
        let len = Length(bits);

        for(i in 0..len-2){
            let x = len-2 - i;
            Controlled X(bits[0..x], bits[x+1]);
        }
        X(bits[0]);
    }
}