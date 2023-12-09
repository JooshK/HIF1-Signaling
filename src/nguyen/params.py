import gillespy2

def params(parameter_values=None):
    #model initializer
    model = gillespy2.Model()
    
    # define parameters
    k_1 = gillespy2.Parameter(name='k_1', expression=0.005)
    k_2 = gillespy2.Parameter(name='k_2', expression=0.0002)
    k_3 = gillespy2.Parameter(name='k_3', expression=0.045)
    k_m_3a = gillespy2.Parameter(name='k_m_3a', expression=250)
    k_m_3b = gillespy2.Parameter(name='k_m_3b', expression=100)
    k_4 = gillespy2.Parameter(name='k_4', expression=0.1)
    k_m_4 = gillespy2.Parameter(name='k_m_4', expression=150)
    k_5 = gillespy2.Parameter(name='k_5', expression=0.4)
    k_m_5a = gillespy2.Parameter(name='k_m_5a', expression=90)
    k_m_5b = gillespy2.Parameter(name='k_m_5b', expression=20)
    k_6 = gillespy2.Parameter(name='k_6', expression=0.001)
    k_7 = gillespy2.Parameter(name='k_7', expression=0.003)
    k_8 = gillespy2.Parameter(name='k_8', expression=0.01)
    k_9 = gillespy2.Parameter(name='k_9', expression=0.001)
    k_10 = gillespy2.Parameter(name='k_10', expression=0.001)
    k_11 = gillespy2.Parameter(name='k_11', expression=0.0001)
    k_12 = gillespy2.Parameter(name='k_12', expression=0.0001)
    k_13 = gillespy2.Parameter(name='k_13', expression=0.0002)
    k_14 = gillespy2.Parameter(name='k_14', expression=0.0001)
    k_21_f = gillespy2.Parameter(name='k_21_f', expression=0.0005)
    k_21_r = gillespy2.Parameter(name='k_21_r', expression=0.01)
    k_22_f = gillespy2.Parameter(name='k_22_f', expression=0.001)
    k_22_r = gillespy2.Parameter(name='k_22_r', expression=0.01)
    k_23 = gillespy2.Parameter(name='k_23', expression=0.0016)
    k_24 = gillespy2.Parameter(name='k_24', expression=0.002)
    k_25 = gillespy2.Parameter(name='k_25', expression=0.00001)
    k_26 = gillespy2.Parameter(name='k_26', expression=0.00038)
    k_27 = gillespy2.Parameter(name='k_27', expression=0.009)
    k_28 = gillespy2.Parameter(name='k_28', expression=0.0001)
    k_29 = gillespy2.Parameter(name='k_21_f', expression=0.02)
    o_2 = gillespy2.Parameter(name='o_2', expression=100)
    fih = gillespy2.Parameter(name='fih', expression=110)
    fih_n = gillespy2.Parameter(name='fih_n', expression=40)
    vhl = gillespy2.Parameter(name='vhl', expression=50)
    vhl_n = gillespy2.Parameter(name='vhl_n', expression=50)
    
    
    
    
    
    
    
    
    
