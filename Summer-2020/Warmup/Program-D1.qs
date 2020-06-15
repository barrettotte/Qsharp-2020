namespace D1 {

    open Microsoft.Quantum.MachineLearning;

    operation Solve(): (ControlledRotation[], (Double[], Double)) {
        return (
            [ControlledRotation((0, new Int[0]), PauliY, 0)], 
            ([3.1470000000000145], 0.003400000000000014)
        );
    }
}