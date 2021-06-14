package com.qa.examples.cucumber_base.step_definitions;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;



public class GoogelSearchTest {
	static WebDriver driver;

	@BeforeClass
	public static void init() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/drivers/chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().fullscreen();
	}

	@Before
	public void setup() throws TimeoutException {
		driver.manage().timeouts().pageLoadTimeout(20, TimeUnit.SECONDS);
		driver.get(HomePage.getUrl());
	}

	@AfterClass
	public static void teardown() {
		driver.quit();
	}

	@Test
	public void test() throws InterruptedException {

		HomePage nav = PageFactory.initElements(driver, HomePage.class);

		nav.searchInput();
		Thread.sleep(10000);
		
		nav.OpenPage();
		Thread.sleep(10000);

	}

}
