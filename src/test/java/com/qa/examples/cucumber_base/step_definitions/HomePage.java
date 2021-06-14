package com.qa.examples.cucumber_base.step_definitions;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage {
	private static final String URL = "https://www.google.com/";

	@FindBy(xpath = "//body/div[1]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]"
)
	private WebElement search;

	@FindBy(xpath = "//span[contains(text(),'facebook.com')]")
	private WebElement OpenPage;

	public static String getUrl() {
		return URL;
	}

	public void searchInput(){
		search.sendKeys("Facebook");
		search.sendKeys(Keys.ENTER);
	
	}

	public void OpenPage(){
		OpenPage.click();
	}

}
