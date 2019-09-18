<form class="comment-form" id="comment-form">
    <div class="comment-header">
        <h3 class="comment-title">Leave a comment</h3>
        <p>Your email address will not be published. Required fields are marked <span class="required-star">*</span></p>
    </div>
    <div class="input-row">
        <label for="comment">Comment <span class="required-star">*</span></label>
        <textarea name="comment" placeholder="Comment"></textarea>
    </div>
    {{-- <div class="input-row">
        <label for="name">Full Name <span class="required-star">*</span></label>
        <input name="name" type="text" placeholder="Full Name">
    </div>
    <div class="input-row">
        <label for="name">Email <span class="required-star">*</span></label>
        <input name="email" type="text" placeholder="Full Name">
    </div>
    <div class="input-row">
        <label for="website">Website (optional)</label>
        <input type="url" name="website" placeholder="https://example.com">
    </div> --}}
    <div class="input-row">
        <button class="primary" type="submit">Post Comment</button>
    </div>
</form>
