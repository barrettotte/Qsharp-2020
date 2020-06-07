namespace QuantumRNG {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    

    operation GenerateRandomBit() : Result {
        
        // allocate qubit
        using (q = Qubit()){
            H(q); // put qubit in superposition
            // 50/50 of 0 or 1
            return MResetZ(q); // measure qubit
        }
    }

    operation SampleRandomNumberInRange(max: Int) : Int{
        mutable output = 0;

        repeat{
            mutable bits = new Result[0];
            for(idxBit in 1..BitSizeI(max)){
                set bits += [GenerateRandomBit()];
            }
            set output = ResultArrayAsInt(bits);
        } until(output <= max);

        return output;
    }

    @EntryPoint()
    operation SampleRandomNumber() : Int{
        let max = 50;
        Message($"Sampling a random number between 0 and {max}: ");
        return SampleRandomNumberInRange(max);
    }
}

