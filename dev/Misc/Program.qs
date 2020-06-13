namespace Scratchpad {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    open Microsoft.Quantum.Diagnostics;


    @EntryPoint()
    operation HelloQ() : Unit {
        //Message("Hello quantum world!");
        //PauliGates();
        A4_Scratchpad();
    }

    operation A4_Scratchpad(): Unit{
        using((q,r) = (Qubit(), Qubit())){
            DumpMachine();
            Message("--------------------------------------");
            
            
            Reset(q);
            Reset(r);
        }
    }

    operation A3_Scratchpad(): Unit{
        using((q,r) = (Qubit(), Qubit())){
            DumpMachine();
            Message("--------------------------------------");
            
            H(q);  // Switch from Z-basis to X-basis
            //S(q);
            //S(q);
            Z(q);
            Z(q);
            H(q);  // Switch from X-basis to Z-basis

            if(M(q) == One){
                Message("S"); // 1
            } else{
                Message("Z"); // 0
            }
            Reset(q);
            Reset(r);
        }
    }


    operation A2_Scratchpad(): Unit{
        using(q = (Qubit())){
            DumpMachine();
            Message("--------------------------------------");
            
            H(q);       // switch to X-basis (from Z-basis)
            //Z(q);
            I(q);
            H(q);       // switch to Z-basis

            if(M(q) == One){
                Message("not identity"); // 1
            } else{
                Message("identity"); // 0
            }
            
            Reset(q);
        }
    }

    
    // set qubit to desired classical state
    operation Set(desired : Result, q1 : Qubit) : Unit {
        if (desired != M(q1)) {
            X(q1);
        }
    }


    // Mess around with Pauli Gates
    operation PauliGates(): Unit{
        
        using(q = Qubit()){
            Ry(1.0, q); // put qubit in uneven superposition
            Message("Qubit in state |𝜓❭:");
            DumpMachine();
            Message("--------------------------------------");

            // X Gate - swaps amplitudes of |0❭ and |1❭ basis states
            X(q);
            Message("Qubit in state X|𝜓❭:");
            DumpMachine();
            Message("--------------------------------------");

            // Z Gate - adds -1 relative phase to |1❭ basis states
            Z(q);
            Message("Qubit in state ZX|𝜓❭:");
            DumpMachine();
            Message("--------------------------------------");

            // Y Gate - return qubit to its original state |𝜓❭, with an extra global phase of i
            Y(q);
            Message("Qubit in state YZX|𝜓❭:");
            DumpMachine();
            Message("--------------------------------------");

            Reset(q); // return qubit to state |0❭
        }
    }
}

