import gillespy2
from params import ModelSpecies, RateConstants    

def nguyen_model(parameter_values=None):
    """
    Implements the stochasitc version of the nguyen model defined in
    Nguten et. al. 2013 J Cell Sci
    """
    model = gillespy2.Model()

    # define the model species and rate constants:
    species = ModelSpecies()
    
