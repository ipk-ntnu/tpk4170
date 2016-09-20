import matplotlib.pyplot as plt


def plot_trajectory(trajectory, iscubic=True):
    qs, dqs, ddqs = trajectory
    f, axarr = plt.subplots(3, sharex=True)
    axarr[0].plot(qs, color='red')
    if iscubic:
        axarr[0].set_title('Cubic Trajectory')
    else:
        axarr[0].set_title('Quintic Trajectory')
    axarr[0].set_ylabel('position')
    axarr[1].plot(dqs, color='green')
    axarr[1].set_ylabel('velocity')
    axarr[2].plot(ddqs, color='blue')
    axarr[2].set_ylabel('acceleration')
    # axarr[2].set_xlabel('time')
