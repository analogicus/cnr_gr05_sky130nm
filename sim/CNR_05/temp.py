import matplotlib.pyplot as plt

temperature = [-40, -20, 0, 20, 40, 60, 80, 100, 120]
values = [27.79810, 29.20826, 30.54253, 31.80923, 33.03085, 34.27400, 35.60521, 37.10607, 39.19889]

lin_a = 0.07
lin_b = 30.47

def linfunc(x, m, b):
    return m*x + b

lin = []
for temp in temperature:
    lin.append(linfunc(temp, lin_a, lin_b))



fig, ax = plt.subplots(1)
fig.tight_layout(pad=5.0)

ax.plot(temperature, lin, label='0.07*uS + 30.47', color='red')
ax.plot(temperature, values, label='Simulated times', color='blue', marker='o', linestyle='None')
ax.set_xlabel('Temperature (°C)')
ax.set_ylabel('Time (uS)')
ax.set_title('Time (uS) vs Temperature (°C)')
ax.legend()
ax.grid(True)
fig.savefig('deltaTime.svg')
plt.show()

