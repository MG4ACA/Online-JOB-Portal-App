/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Comment;
import lk.ijse.mr.core.Post;
import lk.ijse.mr.other.TempoPost;
import lk.ijse.mr.core.User;
import lk.ijse.mr.core.Wall;
import lk.ijse.mr.service.PostDService;
import lk.ijse.mr.service.UserService;
import lk.ijse.mr.service.WallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Sanu
 */
@Controller
public class PostController {

    @Autowired
    private PostDService postService;

    @Autowired
    private UserService userService;

    @Autowired
    private WallService wallService;

    @RequestMapping(value = "/addpost.htm", method = RequestMethod.POST)
    public String postAUser(@RequestParam("fileW") MultipartFile fileW, HttpServletRequest req) {

        try {
            InputStream in = fileW.getInputStream();
            String realPath = req.getServletContext().getRealPath("/resources/wallpics");
            String outPath = realPath + File.separator + fileW.getOriginalFilename();
            String parameter = req.getParameter("wallDetails");

            Date d = new Date();
            SimpleDateFormat format = new SimpleDateFormat("EEE, d MMM yyyy");
            String date = format.format(d);

            //search the owner of post
            int userid = Integer.parseInt(req.getParameter("userid"));
            User user = userService.searchUser(userid);

            Post post = new Post();
            post.setDetails(parameter);
            post.setImage(fileW.getOriginalFilename());
            post.setLikes(1);
            post.setVisib("true");
            post.setDate(date);

            //wall implemetation
            Wall tempwall = new Wall();
            Date today = new Date();
            tempwall.setDate(date);
            tempwall.getPost().add(post);

            File outf = new File(outPath);
            outf.createNewFile();
            FileOutputStream out = new FileOutputStream(outf);
            int i = 0;
            while ((i = in.read()) != -1) {
                out.write(i);
            }

            user.getWallId().add(tempwall);
            userService.updateUser(user);
            ArrayList<Post> posts = (ArrayList<Post>) req.getServletContext().getAttribute("wallPost");
            if (posts == null) {
                posts = new ArrayList<Post>();

            }
            posts.add(post);
            req.getServletContext().setAttribute("wallPost", posts);
        } catch (IOException ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "dashboard";
    }

    @RequestMapping(value = "/getAllPost", method = RequestMethod.GET, produces = "application/json")
    public void generate(HttpServletResponse resp, HttpServletRequest req) {
        try {
            ArrayList<Post> tempPost = new ArrayList<Post>();
            PrintWriter writer = resp.getWriter();
            Gson gson = new Gson();
            List<Post> list = postService.getPostList();
            if (!list.isEmpty()) {
                for (Post post : list) {
                    Post p = new Post();
                    p.setVisib(post.getVisib());
                    p.setCommnets(post.getCommnets());
                    p.setDetails(post.getDetails());
                    p.setImage(post.getImage());
                    p.setPpid(post.getPpid());
                    p.setLikes(post.getLikes());
                    tempPost.add(p);
                }
                String toJson = gson.toJson(tempPost);
                writer.write(toJson);
            }

        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "/userPost", method = RequestMethod.GET, produces = "application/json")
    public void getUsrPost(HttpServletResponse resp, HttpServletRequest req) {
        try {
            ArrayList<TempoPost> tempPost = new ArrayList<TempoPost>();
            PrintWriter writer = resp.getWriter();
            Gson gson = new Gson();

            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            int id = user.getId();

            User seUser = userService.searchUser(id);
            User tempU = new User();
            Set<Wall> wallId = seUser.getWallId();
            for (Wall wall : wallId) {
                Set<Post> post = wall.getPost();
                for (Post post1 : post) {
                    TempoPost p = new TempoPost();
                    p.setVisib(post1.getVisib());
//                    p.setCommnets(post1.getCommnets());
                    p.setDetails(post1.getDetails());
                    p.setImage(post1.getImage());
                    p.setPpid(post1.getPpid());
                    p.setLikes(post1.getLikes());
                    p.setCf(seUser.getCf());
                    p.setFirstName(seUser.getFirstName());
                    p.setLastName(seUser.getLastName());
                    p.setPossition(user.getPossition());
                    p.setDate(post1.getDate());
                    tempPost.add(p);
                }
            }
            String toJson = gson.toJson(tempPost);
            writer.write(toJson);

        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "/allupost", method = RequestMethod.GET, produces = "application/json")
    public void getUsrPosts(HttpServletResponse resp, HttpServletRequest req) {
        try {
            ArrayList<TempoPost> tempPost = new ArrayList<TempoPost>();
            PrintWriter writer = resp.getWriter();
            Gson gson = new Gson();

            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            int id = user.getId();

            List<User> userList = userService.getUserList();
            if (!userList.isEmpty()) {
                for (User user1 : userList) {
                    Set<Wall> wallId = user1.getWallId();
                    for (Wall wall : wallId) {
                        Set<Post> post = wall.getPost();
                        for (Post post1 : post) {
                            TempoPost p = new TempoPost();
                            p.setVisib(post1.getVisib());
//                    p.setCommnets(post1.getCommnets());
                            p.setDetails(post1.getDetails());
                            p.setImage(post1.getImage());
                            p.setPpid(post1.getPpid());
                            p.setLikes(post1.getLikes());
                            p.setCf(user1.getCf());
                            p.setFirstName(user1.getFirstName());
                            p.setLastName(user1.getLastName());
                            p.setPossition(user.getPossition());
                            tempPost.add(p);
                        }
                    }
                }
            }

            String toJson = gson.toJson(tempPost);
            writer.write(toJson);

        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "/likeMe", method = RequestMethod.GET)
    public void likePost(HttpServletResponse resp, HttpServletRequest req) {
        try {
            int pid = Integer.parseInt(req.getParameter("likeP"));
            String dess = req.getParameter("des");
            Post searchPost = postService.searchPost(pid);
            int likes = searchPost.getLikes();
            searchPost.setLikes(likes + 1);
            postService.updatePost(searchPost);
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "/comMe", method = RequestMethod.POST)
    public void postComment(HttpServletResponse resp, HttpServletRequest req) {
        try {
            User user = (User) req.getSession().getAttribute("cuser");
            int pid = Integer.parseInt(req.getParameter("postId"));
            String dess = req.getParameter("commnet");
            Post searchPost = postService.searchPost(pid);
            Comment c = new Comment();
            c.setComment(dess);
//            c.setFrom(user);
            searchPost.getCommnets().add(c);
            boolean updatePost = postService.updatePost(searchPost);
            resp.getWriter().print(updatePost);
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "/getpostcommen")
    public void getpostComment(HttpServletResponse resp, HttpServletRequest req) {
        try {
            resp.setContentType("application/json");
            ArrayList<Comment> temp = new ArrayList<>();
            int pid = Integer.parseInt(req.getParameter("id"));
            Post searchPost = postService.searchPost(pid);
            Set<Comment> commnets = searchPost.getCommnets();
            if (!commnets.isEmpty()) {
                for (Comment commnet : commnets) {
                    Comment c = new Comment();
                    c.setComment(commnet.getComment());
                    temp.add(c);
                }
                String toJson = new Gson().toJson(temp);
                resp.getWriter().write(toJson);
            }

        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
