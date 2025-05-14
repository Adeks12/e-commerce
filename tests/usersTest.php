<?php
declare(strict_types=1);
// include_once("../class/users.php");
use PHPUnit\Framework\TestCase;
Class usersTest extends TestCase{
    
    public function testCanBeCreatedFromValidEmailAddress(): void
    {
        $data = array(
            "username" => "sam@mail.com",
            "password" => "qqqq7qq"
        );
        $datas = json_encode(array(
            "response_code"=>90,
            "response_message"=>"Invalid username or password, 4 attempt remaining"
        ));
        $this->assertInstanceOf(
            $datas,
            Users::login($data)
        );
    }

    public function testCannotBeCreatedFromInvalidEmailAddress(): void
    {
        $data = array(
            "username" => "sam@mail.com",
            "password" => "qqqqqqd"
        );
        $this->expectException(InvalidArgumentException::class);

        Users::login("Users");
    }

    public function testCanBeUsedAsString(): void
    {
        $data = array(
            "username" => "sam@mail.com",
            "password" => "qqqqqq"
        );
        $datas = array(
            'response_code' => 0,
            'response_message' => 'Login Successful'
        );
        $this->assertEquals(
            $datas,
            Users::login($data)
        );
    }
}