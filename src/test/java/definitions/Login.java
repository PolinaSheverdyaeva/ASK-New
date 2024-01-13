package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;

public class Login {


    @When("I navigate to login page")
    public void iNavigateToLoginPage()
    {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton()
    {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @Then("^I verify user name \"([^\"]*)\" is displayed$")
    public void iVerifyUserNameIsDisplayed(String name) throws Throwable {
        assertThat(getDriver().findElement(By.xpath("//h3[contains(text(),'"+name+"')]")).isDisplayed()).isTrue();
    }

    @Then("^I verify error message \"([^\"]*)\" appears$")
    public void iVerifyErrorMessageAppears(String message) throws Throwable {
        assertThat(getDriver().findElement(By.xpath("//*[text()='"+message+"']")).isDisplayed()).isTrue();
    }
}