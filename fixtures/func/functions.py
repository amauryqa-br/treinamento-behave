from selenium.webdriver.common.by import By

class Functions:
    def __init__(self,driver):
        self.driver = driver
        pass

    def click(
            self,
            element, 
            type_Locator=By.CSS_SELECTOR
        ):
        self.driver.find_element(type_Locator, element).click()
        return element

    def send_keys(
            self,
            element,
            text, 
            type_Locator=By.CSS_SELECTOR
        ):
        self.driver.find_element(type_Locator, element).send_keys(text)
        return element
    
    def validate_text(
            self,
            element,
            text, 
            type_Locator=By.CSS_SELECTOR
        ):
        self.driver.find_element(type_Locator, element).text == text
        return element
    
    def validate_popup_message(
            self,
            element,
            text,
            type_Locator=By.CSS_SELECTOR
    ):
        elemento = self.driver.find_element(type_Locator, element)
        validation_message = self.driver.execute_script("return arguments[0].validationMessage;", elemento).replace('\xa0',' ')
        assert validation_message == text
        return element