import requests
import time

rpi_loc = "8127384.local"

sleep_sec = 1


def main(loc, sec):
    while True:
        r1 = requests.get("http://%s/light1on" % rpi_loc)

        time.sleep(sleep_sec)

        r2 = requests.get("http://%s/light2on" % rpi_loc)

        time.sleep(sleep_sec)


if __name__ == '__main__':
    main(rpi_loc, sleep_sec)
