package com.kzh.busi.blog.action;

import com.kzh.busi.blog.entity.Blog;
import com.kzh.busi.blog.service.BlogService;
import com.kzh.util.struts.BaseAction;
import org.apache.struts2.convention.annotation.ResultPath;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@ResultPath("/pages/busi/blog/")
public class BlogAction extends BaseAction {
    @Autowired
    private BlogService service;
    private List blogList;
    private Blog blog;

    public String add() {
        return "add";
    }

    public String create() {
        blog = new Blog();
        blog.setState("create");
        return "create";
    }

    public String save() {
        blog.setState("fine");
        service.save(blog);
        return SUCCESS;
    }

    public String queryList() {
        this.blogList = service.query(Blog.class);
        return SUCCESS;
    }

    public String execute() {
        queryList();
        return SUCCESS;
    }

    public String view() {
        blog = (Blog) service.getEntity(Blog.class, blog.getId());
        return "view";
    }

    public String edit() {

        return "edit";
    }

    //--------get/set-------------------------------
    public BlogService getService() {
        return service;
    }

    public void setService(BlogService service) {
        this.service = service;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public List getBlogList() {
        return blogList;
    }

    public void setBlogList(List blogList) {
        this.blogList = blogList;
    }
}
