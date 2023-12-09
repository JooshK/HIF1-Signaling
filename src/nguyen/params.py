from gillespy2 import Species, Parameter

class RateConstants:    
    # define parameters
    k_1 = Parameter(name='k_1', expression=0.005)
    k_2 = Parameter(name='k_2', expression=0.0002)
    k_3 = Parameter(name='k_3', expression=0.045)
    k_m_3a = Parameter(name='k_m_3a', expression=250)
    k_m_3b = Parameter(name='k_m_3b', expression=100)
    k_4 = Parameter(name='k_4', expression=0.1)
    k_m_4 = Parameter(name='k_m_4', expression=150)
    k_5 = Parameter(name='k_5', expression=0.4)
    k_m_5a = Parameter(name='k_m_5a', expression=90)
    k_m_5b = Parameter(name='k_m_5b', expression=20)
    k_6 = Parameter(name='k_6', expression=0.001)
    k_7 = Parameter(name='k_7', expression=0.003)
    k_8 = Parameter(name='k_8', expression=0.01)
    k_9 = Parameter(name='k_9', expression=0.001)
    k_10 = Parameter(name='k_10', expression=0.001)
    k_11 = Parameter(name='k_11', expression=0.0001)
    k_12 = Parameter(name='k_12', expression=0.0001)
    k_13 = Parameter(name='k_13', expression=0.0002)
    k_14 = Parameter(name='k_14', expression=0.0001)
    k_21_f = Parameter(name='k_21_f', expression=0.0005)
    k_21_r = Parameter(name='k_21_r', expression=0.01)
    k_22_f = Parameter(name='k_22_f', expression=0.001)
    k_22_r = Parameter(name='k_22_r', expression=0.01)
    k_23 = Parameter(name='k_23', expression=0.0016)
    k_24 = Parameter(name='k_24', expression=0.002)
    k_25 = Parameter(name='k_25', expression=0.00001)
    k_26 = Parameter(name='k_26', expression=0.00038)
    k_27 = Parameter(name='k_27', expression=0.009)
    k_28 = Parameter(name='k_28', expression=0.0001)
    k_29 = Parameter(name='k_21_f', expression=0.02)
    o_2 = Parameter(name='o_2', expression=100)
    fih = Parameter(name='fih', expression=110)
    fih_n = Parameter(name='fih_n', expression=40)
    vhl = Parameter(name='vhl', expression=50)
    vhl_n = Parameter(name='vhl_n', expression=50)


class ModelSpecies:
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
