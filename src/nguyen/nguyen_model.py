from scipy.integrate import odeint
import numpy as np

class Params:    
    # define parameters
    k_1 = 0.005
    k_2 = 0.0002
    k_3 = 0.045
    k_m_3a = 250
    k_m_3b = 100
    k_4 = 0.1
    k_m_4 = 150
    k_5 = 0.4
    k_m_5a = 90
    k_m_5b = 20
    k_6 = 0.001
    k_7 = 0.003
    k_8 = 0.01
    k_9 = 0.001
    k_10 = 0.001
    k_11 = 0.0001
    k_12 = 0.0001
    k_13 = 0.0002
    k_14 = 0.0001
    k_21_f = 0.0005
    k_21_r = 0.01
    k_22_f = 0.001
    k_22_r = 0.01
    k_23 = 0.0016
    k_24 = 0.002
    k_25 = 0.00001
    k_26 = 0.00038
    k_27 = 0.009
    k_28 = 0.0001
    k_29 = 0.02
    o_2 = 100
    fih = 110
    fih_n = 40
    vhl = 50
    vhl_n = 50

    def hypo_3(self, t, t_start):
        return 100 * (1 - 18/21*np.heaviside(t - t_start))

    def hypo_1(self, t, t_start):
        return 100 * (1 - 20/21*np.heaviside(t - t_start))

    def v1(self):
        return self.k_1
    
    def v2(self,HIFa):
        return self.k_2
    
    def v3(self, t, t_start, hypo, PHD, HIFa):
        o2 = hypo(t, t_start)
        return self.k_3 * PHD * o2/(self.k_m_3a + o2) * HIFa/(self.k_m_3b + HIFa)
    
    def v4(self, HIFa_pOH):
        return self.k_4*self.vhl*HIFa_pOH/(self.k_m_4 + HIFa_pOH)

    def v5(self, t, t_start, hypo, HIFa):
        o2 = hypo(t, t_start)
        return self.k_5 * self.fih * o2/(self.k_m_5a + o2) * HIFa/(self.k_m_5b + HIFa)
    
    def v6(self, HIFa_aOH):
        return self.k_6*HIFa_aOH
    
    def v7(self, t, t_start, hypo, PHD, HIFa_aOH):
        o2 = hypo(t, t_start)
        return self.k_7*PHD*o2/(self.k_m_3a + o2) * HIFa_aOH/(self.k_m_3b + HIFa_aOH)
    
    def v8(self, HIFa_aOHpOH):
        return self.k_8*self.vhl*HIFa_aOHpOH/(self.k_m_4 + HIFa_aOHpOH)
    
    def v9(self, HIFa):
        return self.k_9*HIFa
    
    def v10(self, HIFa_n):
        return self.k_10*HIFa_n
    
    def v11(self, PHD):
        return self.k_11*PHD
    
    def v_12(self, PHD_n):
        return self.k_12*PHD_n
    
    def v_13(self, HIFa_aOH):
        return self.k_13*HIFa_aOH
    
    def v_14(self, HIFan_aOH):
        return self.k_14*HIFan_aOH
    

def nguyen_model(s, t, params: Params):
    """
    Defines the system of ODES described by Nguyen et. al. 2013 
    s: The state vector of all the tracked quantites,
    t: time
    params: class of params containing reaction rates
    """
    HIFa, HIFa_pOH, HIFa_aOH, HIFa_aOHpOH, HIFan_pOH, HIFan, HIFd, HIFd_HRE, HIFan_aOH, HIFan_aOHpOH, PHD, PHDn, HIFb, HRE, mRNA, protein, luciferase = s
    t_start = 0
    hypo = params.hypo_1
    model = [
        -params.v1 - params.v2(HIFa) - params.v9(HIFa) + params.v10(HIFan) - params.v3(t, t_start, hypo, PHD, HIFa) - params.v5(t, t_start, hypo, HIFa) + params.v6(HIFa_aOH),
        params.v3(t, t_start, hypo, PHD, HIFa) - params.v4(HIFa_pOH),
        params.v5(t, 0, hypo, HIFa) - params.v6(HIFa_aOH) - params.v7(t, 0, hypo, PHD, HIFa_aOH) - params.v_13(HIFa_aOH) + params.v_14(HIFan_aOH),
        params.v7(t, 0, hypo, PHD, HIFa_aOH) - params.v8(HIFa_aOHpOH) 
    ]
    return model

def 
