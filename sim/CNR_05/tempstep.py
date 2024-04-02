#!/usr/bin/env python3
import pandas as pd
import cicsim as cs
import yaml
import numpy as np
import matplotlib.pyplot as plt


def main(name):
  # Uncomment the following line to disable 
  return

  dfs = cs.toDataFrames(cs.ngRawRead(name + ".raw"))
  df = dfs[0]

  df.to_csv(name + ".csv", index=False)