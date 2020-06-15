namespace D2 {

    open Microsoft.Quantum.MachineLearning;

    operation Solve(): (ControlledRotation[], (Double[], Double)) {
        return (
            [ControlledRotation((0, new Int[0]), PauliY, 0)], 
            ([1.0], 0.24519999999999997)
        );
    }
}