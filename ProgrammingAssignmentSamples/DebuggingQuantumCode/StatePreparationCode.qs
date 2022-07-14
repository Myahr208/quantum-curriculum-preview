namespace StatePreparation {

    // An operation that, given N qubits in the |0...0⟩ state,
    // prepares the GHZ state (|0...0⟩ + |1...1⟩) / sqrt(2) on them.
    operation PrepareGHZState (qs : Qubit[]) : Unit {
        H(qs[0]);
        for i in 1 .. Length(qs) {
            CNOT(qs[i], qs[0]);
        }
    }
}
