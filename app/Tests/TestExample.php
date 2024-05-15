<?php
error_reporting(E_ALL);

class TestExample extends PHPUnit\Framework\TestCase {
	public function setUp(): void {
	}

	public function tearDown(): void {
	}

	public static function setUpBeforeClass(): void {
	}

	public static function tearDownAfterClass(): void {
	}

	public function testTest() {
		$this->assertTrue(true);
	}
}
