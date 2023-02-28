/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class Comment {
    private String commentid;
    private String content;
    private String username;

    public Comment() {
    }

    public Comment(String commentid, String content, String username) {
        this.commentid = commentid;
        this.content = content;
        this.username = username;
    }

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentid=" + commentid + ", content=" + content + ", username=" + username + '}';
    }

    
}
