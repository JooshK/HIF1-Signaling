from scipy.integrate import odeint
import numpy as np
import matplotlib.pyplot as plt
import basico

def smooth_transition(t, t_start, steepness=0.09):
    return 1 / (1 + np.exp(-steepness * (t - t_start)))


class Params:
    """
    Class that holds r
    """
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

    # echinomycin params
    k_ecf = 0.55
    k_ecr = 0.087
    
    def hypo_3_smooth(self, t, t_start):
        return 100 * (1 - 18/21 * smooth_transition(t, t_start))


    def hypo_3(self, t, t_start):
        return 100 * (1 - 18/21*np.heaviside(t-t_start, 1))

    def hypo_1(self, t, t_start):
        return 100 * (1 - 20/21*np.heaviside(t-t_start, 1))

    def v1(self):
        return self.k_1
    
    def v2(self,HIFa):
        return self.k_2*HIFa
    
    def v3(self, t, t_start, hypo, PHD, HIFa):
        o2 = hypo(t, t_start)
        return self.k_3 * PHD * o2/(self.k_m_3a + o2) * HIFa/(self.k_m_3b + HIFa)
    
    def v4(self, HIFa_pOH):
        return self.k_4*self.vhl*HIFa_pOH/(self.k_m_4 + HIFa_pOH)

    def v5(self, t, t_start, hypo, HIFa):
        o2 = hypo(t, t_start)
        #o2 = 100
        return self.k_5 * self.fih * o2/(self.k_m_5a + o2) * HIFa/(self.k_m_5b + HIFa)
    
    def v6(self, HIFa_aOH):
        return self.k_6*HIFa_aOH
    
    def v7(self, t, t_start, hypo, PHD, HIFa_aOH):
        o2 = hypo(t, t_start)
        #o2 = 100
        return self.k_7*PHD*o2/(self.k_m_3a + o2) * HIFa_aOH/(self.k_m_3b + HIFa_aOH)
    
    def v8(self, HIFa_aOHpOH):
        return self.k_8*self.vhl*HIFa_aOHpOH/(self.k_m_4 + HIFa_aOHpOH)
    
    def v9(self, HIFa):
        
        return self.k_9*HIFa
    
    def v10(self, HIFa_n):
        return self.k_10*HIFa_n
    
    def v11(self, PHD):
        return self.k_11*PHD
    
    def v12(self, PHD_n):
        return self.k_12*PHD_n
    
    def v13(self, HIFa_aOH):
        return self.k_13*HIFa_aOH
    
    def v14(self, HIFan_aOH):
        return self.k_14*HIFan_aOH
    
    def v15(self, t, t_start, hypo, PHD_n, HIFa_n):
        o2 = hypo(t, t_start)
        #o2 = 100
        return self.k_3*PHD_n*o2/(self.k_m_3a+o2)*HIFa_n/(self.k_m_3b+HIFa_n)

    def v16(self, HIFa_n_pOH):
        return self.k_4*self.vhl_n*HIFa_n_pOH/(self.k_m_4+HIFa_n_pOH)
    
    def v17(self, t, t_start, hypo, HIFa_n):
        o2 = hypo(t,t_start)
        #o2 = 100
        return self.k_5*self.fih_n*o2/(self.k_m_5a+o2)*HIFa_n/(self.k_m_5b+HIFa_n)
    
    def v18(self, HIFa_n_aOH):
        return self.k_6*HIFa_n_aOH
    
    def v19(self, t, t_start, hypo, PHD_n, HIFa_n_aOH):
        o2 = hypo(t, t_start)
        #o2 = 100
        return self.k_7*PHD_n*o2/(self.k_m_3a+o2)*HIFa_n_aOH/(self.k_m_3b+HIFa_n_aOH)
    
    def v20(self, HIFa_n_aOHpOH):
        return self.k_8*self.vhl_n*HIFa_n_aOHpOH/(self.k_m_4+HIFa_n_aOHpOH)

    def v21(self, HIFa_n, HIFb, HIFd):
        return self.k_21_f*HIFa_n*HIFb-self.k_21_r*HIFd

    def v22(self,HIFd, HRE, HIFd_HRE):
        return self.k_22_f*HIFd*HRE-self.k_22_r*HIFd_HRE

    def v23(self, HIFd_HRE):
        return self.k_23*HIFd_HRE

    def v24(self, HIFd_HRE):
        return self.k_24*HIFd_HRE

    def v25(self, PHD):
        return self.k_25*PHD

    def v26(self, mRNA):
        return self.k_26*mRNA

    def v27(self, mRNA):
        return self.k_27*mRNA

    def v28(self, Protein):
        return self.k_28*Protein

    def v29(self, Protein):
        return self.k_29*Protein
    
    def ec_binding(self, echinomycin, HRE, echinomycin_HRE):
        return self.k_ecf*echinomycin * HRE - self.k_ecr*echinomycin_HRE

def nguyen_model(s, t, params: Params):
    """
    Defines the system of ODES described by Nguyen et. al. 2013
    The model reactions are described in Table S3  
    s: The state vector of all the tracked quantites,
    t: time
    params: class of params containing reaction rates
    """
    HIFa, HIFa_pOH, HIFa_aOH, HIFa_aOHpOH, HIFan_pOH, HIFan, HIFd, HIFd_HRE, HIFan_aOH, HIFan_aOHpOH, PHD, PHDn, HIFb, HRE, mRNA, protein, luciferase = s
    t_start = 15
    hypo = params.hypo_3
    model = [
        params.v1() - params.v2(HIFa) - params.v9(HIFa) + params.v10(HIFan) - params.v3(t, t_start, hypo, PHD, HIFa) - params.v5(t, t_start, hypo, HIFa) + params.v6(HIFa_aOH),
        params.v3(t, t_start, hypo, PHD, HIFa) - params.v4(HIFa_pOH),
        params.v5(t, t_start, hypo, HIFa) - params.v6(HIFa_aOH) - params.v7(t, t_start, hypo, PHD, HIFa_aOH) - params.v13(HIFa_aOH) + params.v14(HIFan_aOH),
        params.v7(t, t_start, hypo, PHD, HIFa_aOH) - params.v8(HIFa_aOHpOH),
        params.v15(t, t_start, hypo, PHDn, HIFan) - params.v16(HIFan_pOH),
        params.v9(HIFa) - params.v10(HIFan) - params.v17(t, t_start, hypo, HIFan) + params.v18(HIFan_aOH)-params.v15(t, t_start, hypo, PHDn, HIFan)-params.v21(HIFan, HIFb, HIFd),
        params.v21(HIFan, HIFb, HIFd) - params.v22(HIFd, HRE, HIFd_HRE),
        params.v22(HIFd, HRE, HIFd_HRE),
        params.v17(t, t_start, hypo, HIFan) - params.v18(HIFan_aOH) - params.v19(t, t_start, hypo, PHDn, HIFan_aOH),
        params.v19(t, t_start, hypo, PHDn, HIFan_aOH) - params.v20(HIFan_aOHpOH),
        params.v24(HIFd_HRE) - params.v25(PHD) - params.v11(PHD) + params.v12(PHDn),
        params.v11(PHD) - params.v12(PHDn),
        -params.v21(HIFan, HIFb, HIFd),
        -params.v22(HIFd, HRE, HIFd_HRE),
        params.v23(HIFd_HRE) - params.v26(mRNA),
        params.v27(mRNA) - params.v28(protein),
        params.v29(protein)
    ]
    return model


def echinomycin_model(s, t, params: Params):
    HIFa, HIFa_pOH, HIFa_aOH, HIFa_aOHpOH, HIFan_pOH, HIFan, HIFd, HIFd_HRE, HIFan_aOH, HIFan_aOHpOH, PHD, PHDn, HIFb, HRE, mRNA, protein, luciferase, echinomycin, echinomycin_HRE = s
    t_start = 15
    hypo = params.hypo_3
    model = [
        params.v1() - params.v2(HIFa) - params.v9(HIFa) + params.v10(HIFan) - params.v3(t, t_start, hypo, PHD, HIFa) - params.v5(t, t_start, hypo, HIFa) + params.v6(HIFa_aOH),
        params.v3(t, t_start, hypo, PHD, HIFa) - params.v4(HIFa_pOH),
        params.v5(t, t_start, hypo, HIFa) - params.v6(HIFa_aOH) - params.v7(t, t_start, hypo, PHD, HIFa_aOH) - params.v13(HIFa_aOH) + params.v14(HIFan_aOH),
        params.v7(t, t_start, hypo, PHD, HIFa_aOH) - params.v8(HIFa_aOHpOH),
        params.v15(t, t_start, hypo, PHDn, HIFan) - params.v16(HIFan_pOH),
        params.v9(HIFa) - params.v10(HIFan) - params.v17(t, t_start, hypo, HIFan) + params.v18(HIFan_aOH)-params.v15(t, t_start, hypo, PHDn, HIFan)-params.v21(HIFan, HIFb, HIFd),
        params.v21(HIFan, HIFb, HIFd) - params.v22(HIFd, HRE, HIFd_HRE),
        params.v22(HIFd, HRE, HIFd_HRE),
        params.v17(t, t_start, hypo, HIFan) - params.v18(HIFan_aOH) - params.v19(t, t_start, hypo, PHDn, HIFan_aOH),
        params.v19(t, t_start, hypo, PHDn, HIFan_aOH) - params.v20(HIFan_aOHpOH),
        params.v24(HIFd_HRE) - params.v25(PHD) - params.v11(PHD) + params.v12(PHDn),
        params.v11(PHD) - params.v12(PHDn),
        -params.v21(HIFan, HIFb, HIFd),
        -params.v22(HIFd, HRE, HIFd_HRE) - params.ec_binding(echinomycin, HRE, echinomycin_HRE),
        params.v23(HIFd_HRE) - params.v26(mRNA),
        params.v27(mRNA) - params.v28(protein),
        params.v29(protein),
        -params.ec_binding(echinomycin, HRE, echinomycin_HRE),
        params.ec_binding(echinomycin, HRE, echinomycin_HRE)
    ]
    return model


def solve_model(time, model, initial_state, p):
    sol = odeint(model, initial_state, time, args=(p,))
    return sol


