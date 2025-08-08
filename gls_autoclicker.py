from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()
driver.get("https://tdprcommunitychat.sardius.live")

time.sleep(5)
name = driver.find_element(By.NAME, "displayName")
name.send_keys("clicker")
time.sleep(1)
button = driver.find_element(By.TAG_NAME, "button")
button.click()

time.sleep(5)
hotdog = driver.find_element(By.XPATH, 
"/html/body/div[2]/div/div[4]/div/div/div[4]/div[1]/div/div[6]/div[2]/button/span[1]")

while True:
	hotdog.click()
	time.sleep(1)
