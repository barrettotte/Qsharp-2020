namespace Sandbox {

    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;


    @EntryPoint()
    operation Entry() : Unit {
        //Message("Hello quantum world!");
        Scratchpad();
    }

    // -Z gate for A5; ex: ```Controlled NegativeZ([qs[0]], qs[1]);```
    operation NegativeZ(q: Qubit): Unit is Adj+Ctl{
        X(q);
        Z(q);
        X(q);
    }

    // Increment an unsigned integer stored in little endian qubit array
    operation Increment(qs: Qubit[]): Unit is Adj+Ctl{
        for (i in Length(qs) - 1 .. -1 .. 0) {
            Controlled X(qs[0 .. i - 1], qs[i]);
        }
    }
    

    operation Scratchpad(): Unit {
        //mutable result = 0;
        
    }


    // set qubit to desired classical state
    operation Set(desired: Result, q1: Qubit): Unit {
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

