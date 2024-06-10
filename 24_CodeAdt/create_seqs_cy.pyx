import numpy as np
cimport numpy as np
from libc.stdlib cimport rand

def create_seqs_cython(int size, int number_seqs):
    """
    Generates random DNA sequences.

    Parameters:
    size (int): Length of each DNA sequence.
    number_seqs (int): Number of DNA sequences to generate.

    Returns:
    numpy.ndarray: A 2D array of randomly generated DNA sequences.
    """
    cdef np.ndarray[np.uint8, ndim=2] sequences = np.empty((number_seqs, size), dtype=np.uint8)
    cdef int i, j

    for i in range(number_seqs):
        for j in range(size):
            sequences[i, j] = rand() % 4

    return sequences