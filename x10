package pg10;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Aaa {
    public static void main(String[] args) throws InterruptedException {
        WebDriver driver = new ChromeDriver();

        driver.get("https://www.saucedemo.com/");
        Thread.sleep(1000); // Wait 1 sec for page to load

        driver.findElement(By.id("user-name")).click(); // just for the click function
        Thread.sleep(1000); // Wait before typing

        driver.manage().window().maximize();
        Thread.sleep(1000); // Wait for window maximize effect

        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        Thread.sleep(1000); // Slow typing simulation

        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        Thread.sleep(1000); // Slow typing simulation

        driver.findElement(By.className("submit-button")).click();
        Thread.sleep(2000); // Wait for page transition

        boolean flag = driver.findElement(By.xpath("//button[text()=\"Open Menu\"]")).isDisplayed();
        if (flag) {
            System.out.println("✅ Successfully logged in! hurRAY");
        } else {
            System.out.println("❌ Login failed");
        }

        // Optional cleanup
        // Thread.sleep(2000);
        // driver.close();  // Closes only current browser window
        // driver.quit();   // Closes all associated windows
    }
}
