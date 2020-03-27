import sys
from ase.spacegroup import crystal
from ase.visualize import view
from ase import Atoms
from ase.build import surface
from ase.io import write

atoms = crystal(spacegroup=136,
                symbols=['Ti','O'],
                basis=[[0,0,0],[0.305,0.305,0]],
                cellpar=[4.67,4.67,2.97,90.0,90.0,90.0])

s1 = surface(atoms, (1, 1, 0), 10)
s1.center(vacuum=7.5, axis=2)

write('POSCAR',s1,format='vasp')
