// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

void Vlng___024root___eval_act(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ PulseDurationMeasurement__DOT__temp_value;
    PulseDurationMeasurement__DOT__temp_value = 0;
    // Body
    vlSelf->temperature_output = vlSelf->PulseDurationMeasurement__DOT__temp_value1;
    if (VL_LIKELY(vlSelf->reset_n)) {
        if ((0U == (IData)(vlSelf->PulseDurationMeasurement__DOT__state))) {
            vlSelf->PulseDurationMeasurement__DOT__count = 1U;
            if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->signal_in))))) {
                vlSelf->PulseDurationMeasurement__DOT__state = 1U;
                VL_WRITEF("\t\t\t\t\tMeasurement finished \t\t Measured temperature: %4d\n",
                          9,vlSelf->temperature_output);
            }
        } else if ((1U == (IData)(vlSelf->PulseDurationMeasurement__DOT__state))) {
            if (VL_UNLIKELY(vlSelf->signal_in)) {
                vlSelf->PulseDurationMeasurement__DOT__pulse_duration 
                    = vlSelf->PulseDurationMeasurement__DOT__count;
                VL_WRITEF("\t\t\t\t\tCount finished \t\t Pulse Duration: %4#\n",
                          12,vlSelf->PulseDurationMeasurement__DOT__pulse_duration);
                vlSelf->PulseDurationMeasurement__DOT__state = 0U;
            } else {
                vlSelf->PulseDurationMeasurement__DOT__count 
                    = (0xfffU & ((IData)(1U) + (IData)(vlSelf->PulseDurationMeasurement__DOT__count)));
            }
        } else {
            vlSelf->PulseDurationMeasurement__DOT__state = 0U;
        }
    } else {
        VL_WRITEF("\tReset\n");
        vlSelf->PulseDurationMeasurement__DOT__state = 0U;
        vlSelf->PulseDurationMeasurement__DOT__count = 0U;
    }
    PulseDurationMeasurement__DOT__temp_value = VL_RTOI_I_D(
                                                            (-7.08323095108900020e+02 
                                                             + 
                                                             ((-1.21597700000000003e-04 
                                                               * 
                                                               (VL_ITOR_D_I(12, (IData)(vlSelf->PulseDurationMeasurement__DOT__pulse_duration)) 
                                                                * 
                                                                VL_ITOR_D_I(12, (IData)(vlSelf->PulseDurationMeasurement__DOT__pulse_duration)))) 
                                                              + 
                                                              (6.88111254700000008e-01 
                                                               * 
                                                               VL_ITOR_D_I(12, (IData)(vlSelf->PulseDurationMeasurement__DOT__pulse_duration))))));
    vlSelf->PulseDurationMeasurement__DOT__temp_value1 
        = (0x1ffU & PulseDurationMeasurement__DOT__temp_value);
}

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vlng___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vlng___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vlng___024root___eval_phase__nba(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vlng___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__nba(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../../design/CNR_GR05_SKY130NM/verilog_include_file.v", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vlng___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../../design/CNR_GR05_SKY130NM/verilog_include_file.v", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vlng___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vlng___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vlng___024root___eval_debug_assertions(Vlng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset_n & 0xfeU))) {
        Verilated::overWidthError("reset_n");}
    if (VL_UNLIKELY((vlSelf->signal_in & 0xfeU))) {
        Verilated::overWidthError("signal_in");}
}
#endif  // VL_DEBUG
