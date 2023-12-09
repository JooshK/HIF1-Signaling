import gillespy2
from gillespy2 import Species

def define_species():
    """
    Defines the species in the model, the concentration are given in nM
    Source: Table S2
    """
    HIFa = Species(name='HIFa', initial_value=5)
    HIFa_pOH = Species(name='HIFa_pOH', initial_value=0)
    HIFa_aOH = Species(name='HIFa_aOH', initial_value=0)
    HIFa_aOHpOH = Species(name='HIFa_aOHpOH', initial_value=0)
    HIFan_pOH = Species(name='HIFa_pOH Nucleus', initial_value=0)
    HIFan = Species(name='HIFa Nucleus', initial_value=0)
    HIFd = Species(name='HIFd', initial_value=0)
    HIFd_HRE = Species(name='HIFd_HRE', initial_value=0)
    HIFan_aOH = Species(name='HIFan_aOH Nucles', initial_value=0)
    HIFan_aOHpOH = Species(name='HIFan_aOHpOH', initial_value=0)

    PHD = Species(name='PHD', initial_value=100)
    PHD_n = Species(name='PHD Nucleus', initial_value=0)
    HIFb = Species(name='HIFb', initial_value=170)
    HRE = Species(name='HRE', initial_value=50)

    mRNA = Species(name='HIFa_aOH', initial_value=0)
    protein = Species(name='Gaussia protein', initial_value=0)
    luciferase = Species(name='Luciferase')

    return HIFa,HIFa_pOH,HIFa_aOH,HIFa_aOHpOH,HIFan_pOH,HIFan,HIFd,HIFd_HRE,HIFan_aOH,HIFan_aOHpOH,PHD,PHD_n,HIFb,HRE,mRNA,protein,luciferase

def reaction_rates():
    v_1 = 

def nguyen_model(parameter_values=None):
    """
    Implements the stochasitc version of the nguyen model defined in
    Nguten et. al. 2013 J Cell Sci
    """
    model = gillespy2.Model()

    # define the model species:
    species = list(define_species())
    model.add_species(species)

    



