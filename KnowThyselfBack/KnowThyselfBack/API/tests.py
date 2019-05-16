from django.test import TestCase
from selenium import webdriver
from time import sleep
from selenium.webdriver.chrome.options import Options


class Click(TestCase):
    type_result = "something"

    def __init__(self, _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15, _16, _17, _18, _19, _20, _21,
                 _22, _23, _24, _25, _26, _27, _28):
        # options = Options()
        # options.add_argument("headless")
        self.driver = webdriver.Chrome('/Users/darigummy/Desktop/selenium/chromedriver')
        self.driver.set_window_position(900, 0)
        self.driver.set_window_size(100, 100)
        # self.driver.get('http://www.google.com/xhtml')
        self.navigate(_1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15, _16, _17, _18, _19, _20, _21,
                      _22, _23, _24, _25, _26, _27, _28)

    def navigate(self, _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15, _16, _17, _18, _19, _20, _21,
                     _22, _23, _24, _25, _26, _27, _28):
        self.driver.get('https://socionika.info/test.html')
        if _1 == True:
            _1_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[1]/td[1]/label')
            _1_a_button.click()
        else:
            _1_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[1]/td[3]/label')
            _1_b_button.click()
        if _2 == True:
            _2_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[2]/td[1]/label')
            _2_a_button.click()
        else:
            _2_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[2]/td[3]/label')
            _2_b_button.click()
        if _3 == True:
            _3_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[3]/td[1]/label')
            _3_a_button.click()
        else:
            _3_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[3]/td[3]/label')
            _3_b_button.click()
        if _4 == True:
            _4_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[4]/td[1]/label')
            _4_a_button.click()
        else:
            _4_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[4]/td[3]/label')
            _4_b_button.click()
        if _5 == True:
            _5_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[5]/td[1]/label')
            _5_a_button.click()
        else:
            _5_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[5]/td[3]/label')
            _5_b_button.click()
        if _6 == True:
            _6_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[6]/td[1]/label')
            _6_a_button.click()
        else:
            _6_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[6]/td[3]/label')
            _6_b_button.click()
        if _7 == True:
            _7_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[7]/td[1]/label')
            _7_a_button.click()
        else:
            _7_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[7]/td[3]/label')
            _7_b_button.click()
        if _8 == True:
            _8_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[9]/td[1]/label')
            _8_a_button.click()
        else:
            _8_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[9]/td[3]/label')
            _8_b_button.click()
        if _9 == True:
            _9_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[10]/td[1]/label')
            _9_a_button.click()
        else:
            _9_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                            '2]/form/table/tbody/tr/td/table/tbody/tr[10]/td[3]/label')
            _9_b_button.click()
        if _10 == True:
            _10_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[11]/td['
                                                             '1]/label')
            _10_a_button.click()
        else:
            _10_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[11]/td['
                                                             '3]/label')
            _10_b_button.click()
        if _11 == True:
            _11_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[12]/td['
                                                             '1]/label')
            _11_a_button.click()
        else:
            _11_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[12]/td['
                                                             '3]/label')
            _11_b_button.click()
        if _12 == True:
            _12_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[13]/td['
                                                             '1]/label')
            _12_a_button.click()
        else:
            _12_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[13]/td['
                                                             '3]/label')
            _12_b_button.click()
        if _13 == True:
            _13_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[14]/td['
                                                             '1]/label')
            _13_a_button.click()
        else:
            _13_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[14]/td['
                                                             '3]/label')
            _13_b_button.click()
        if _14 == True:
            _14_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[15]/td['
                                                             '1]/label')
            _14_a_button.click()
        else:
            _14_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[15]/td['
                                                             '3]/label')
            _14_b_button.click()
        if _15 == True:
            _15_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[17]/td['
                                                             '1]/label')
            _15_a_button.click()
        else:
            _15_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[17]/td['
                                                             '3]/label')
            _15_b_button.click()
        if _16 == True:
            _16_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[18]/td['
                                                             '1]/label')
            _16_a_button.click()
        else:
            _16_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[18]/td['
                                                             '3]/label')
            _16_b_button.click()
        if _17 == True:
            _17_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[19]/td['
                                                             '1]/label')
            _17_a_button.click()
        else:
            _17_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[19]/td['
                                                             '3]/label')
            _17_b_button.click()
        if _18 == True:
            _18_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[20]/td['
                                                             '1]/label')
            _18_a_button.click()
        else:
            _18_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[20]/td['
                                                             '3]/label')
            _18_b_button.click()
        if _19 == True:
            _19_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[21]/td['
                                                             '1]/label')
            _19_a_button.click()
        else:
            _19_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[21]/td['
                                                             '3]/label')
            _19_b_button.click()
        if _20 == True:
            _20_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[22]/td['
                                                             '1]/label')
            _20_a_button.click()
        else:
            _20_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[22]/td['
                                                             '3]/label')
            _20_b_button.click()
        if _21 == True:
            _21_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[23]/td['
                                                             '1]/label')
            _21_a_button.click()
        else:
            _21_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[23]/td['
                                                             '3]/label')
            _21_b_button.click()
        if _22 == True:
            _22_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[25]/td['
                                                             '1]/label')
            _22_a_button.click()
        else:
            _22_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[25]/td['
                                                             '3]/label')
            _22_b_button.click()
        if _23 == True:
            _23_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[26]/td['
                                                             '1]/label')
            _23_a_button.click()
        else:
            _23_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[26]/td['
                                                             '3]/label')
            _23_b_button.click()
        if _24 == True:
            _24_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[27]/td['
                                                             '1]/label')
            _24_a_button.click()
        else:
            _24_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[27]/td['
                                                             '3]/label')
            _24_b_button.click()
        if _25 == True:
            _25_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[28]/td['
                                                             '1]/label')
            _25_a_button.click()
        else:
            _25_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[28]/td['
                                                             '3]/label')
            _25_b_button.click()
        if _26 == True:
            _26_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[29]/td['
                                                             '1]/label')
            _26_a_button.click()
        else:
            _26_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[29]/td['
                                                             '3]/label')
            _26_b_button.click()
        if _27 == True:
            _27_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[30]/td['
                                                             '1]/label')
            _27_a_button.click()
        else:
            _27_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[30]/td['
                                                             '3]/label')
            _27_b_button.click()
        if _28 == True:
            _28_a_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[31]/td['
                                                             '1]/label')
            _28_a_button.click()
        else:
            _28_b_button = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                             '2]/form/table/tbody/tr/td/table/tbody/tr[31]/td['
                                                             '3]/label')
            _28_b_button.click()

        submit = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td['
                                                   '2]/form/table/tbody/tr/td/table/tbody/tr[32]/td/center/input[2]')
        # sleep(5)
        self.driver.execute_script("arguments[0].click();", submit)
        out = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td[2]/center/table/tbody/tr/td/p[1]/a')
        # print(out.text)
        # url = out.get_attribute("href")
        # self.driver.get(url)
        # type = self.driver.find_element_by_xpath('/html/body/table[2]/tbody/tr/td[2]/h1')
        self.type_result = out.text
        to_result(out.text)
        self.driver.quit()
        # print(type.text)



def to_result(value):
    Click.type_result = value


def main():
    runtest = Click()


if __name__ == '__main__':
    main()