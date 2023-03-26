from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium import webdriver
import time
import json
from pathlib import Path
# import requests
from bs4 import BeautifulSoup


drink="https://shopeefood.vn/ha-noi/danh-sach-dia-diem-phuc-vu-drink-giao-tan-noi"
eat="https://shopeefood.vn/ha-noi/food/danh-sach-dia-diem-phuc-vu-soup-based-giao-tan-noi"
food="https://shopeefood.vn/ha-noi/food/danh-sach-dia-diem-phuc-vu-streetfood-giao-tan-noi"
def crawl_mp(url):
    service = Service(executable_path="/home/phamhongtham/Downloads/chromedriver_linux64 (1)/chromedriver")
    driver = webdriver.Chrome(service=service)

    driver.get(url)

    time.sleep(15)

    soup = BeautifulSoup(driver.page_source, "html.parser")
    # print(soup.prettify())
    driver.quit()
    info_product = soup.find_all("a", {"class": "item-content"})
    products = []
    for product in info_product:
        name = product.find(class_="name-res")
        img = product.find(class_="")
        adr = product.find(class_="address-res")
        slsp = {
            "name": name.get("title"),
            "img": img.get("src"),
            "adr": adr.get("title")
        }
        products.append(slsp)
        print(slsp)
    return products

products=crawl_mp(drink)
Path("./crawl_sp").mkdir(parents=True, exist_ok=True)
file_path_drink = "./data_crawl/product.json"
print(file_path_drink)
with open(file_path_drink, "w") as final:
    # json.dump(soup.prettify(), final,indent=2, ensure_ascii=False)
    json.dump(products, final, indent=2, ensure_ascii=False)

products=crawl_mp(eat)
file_path_eat = "./data_crawl/product_eat.json"
print(file_path_eat)
with open(file_path_eat, "w") as final:
    # json.dump(soup.prettify(), final,indent=2, ensure_ascii=False)
    json.dump(products, final, indent=2, ensure_ascii=False)

products=crawl_mp(food)
file_path_food = "./data_crawl/product_food.json"
print(file_path_food)
with open(file_path_food, "w") as final:
    # json.dump(soup.prettify(), final,indent=2, ensure_ascii=False)
    json.dump(products, final, indent=2, ensure_ascii=False)
# driver.quit()
