import numpy as np
cimport numpy as np

def loci_freqs_cython(np.ndarray[np.uint8_t, ndim=2] population):
    cdef np.ndarray[np.float32_t, ndim=2] allele_freqs = np.empty((4, population.shape[1]), dtype=np.float32)
    
    cdef int i
    for i in range(4):
        allele_freqs[i] = np.count_nonzero(population == i, axis=0)
    
    return allele_freqs / population.shape[0]
