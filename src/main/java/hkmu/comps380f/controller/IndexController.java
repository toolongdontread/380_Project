package hkmu.comps380f.controller;

import hkmu.comps380f.dao.TicketService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @GetMapping("/")
    public String index() { return "index"; }

    @GetMapping("/login")
    public String login(){
        return "login";
    }
}
