package com.SoundOfMind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SocketController {

	@GetMapping("/socket")
	public String socket() {
		return "websocket";
	}

}
