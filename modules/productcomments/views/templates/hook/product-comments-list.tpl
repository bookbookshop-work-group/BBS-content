
<script type="text/javascript">
  var productCommentUpdatePostErrorMessage = '{l|escape:'javascript' s='Sorry, your review appreciation cannot be sent.' d='Modules.Productcomments.Shop'}';
  var productCommentAbuseReportErrorMessage = '{l|escape:'javascript' s='Sorry, your abuse report cannot be sent.' d='Modules.Productcomments.Shop'}';
</script>
<div class="question">
  <div class="title" id="product-comments-list-header">
      <i class="fa fa-plus acc-icon-plus"></i>
      <i class="fa fa-minus acc-icon-minus"></i> {l s="Avis" d="Shop.Theme.Catalog"} ({$nb_comments})
      {include file='module:productcomments/views/templates/hook/average-grade-stars.tpl' grade=$average_grade}

  </div>
  <div class="answer">
    <div id="reviews">
      <div id="comments">
          <h2>{$nb_comments} {l s="Avis" d="Shop.Theme.Catalog"}</h2>
          <ol class="commentlist" id="product-comments-list"
            data-list-comments-url="{$list_comments_url nofilter}"
            data-update-comment-usefulness-url="{$update_comment_usefulness_url nofilter}"
            data-report-comment-url="{$report_comment_url nofilter}"
            data-comment-item-prototype="{$comment_prototype|escape:'html'}"
          >
            {include file='module:productcomments/views/templates/hook/product-comment-item-prototype.tpl' assign="comment_prototype"}
            {include file='module:productcomments/views/templates/hook/empty-product-comment.tpl'}
          </ol>
      </div>
      <div id="review_form_wrapper">
          <div id="review_form">
              <div id="respond" class="comment-respond">
                <div class="row">
                  <div class="col-md-12 col-sm-12" id="product-comments-list-footer">
                    <div id="product-comments-list-pagination"></div>
                    {if $post_allowed && $nb_comments != 0}
                      <button class="btn btn-comment btn-comment-big post-product-comment">
                        <i class="material-icons" data-icon="edit"></i>
                        {l s='Ajouter un avis' d='Modules.Productcomments.Shop'}
                      </button>
                    {/if}
                  </div>
                </div>
                  {* <h3 id="reply-title" class="comment-reply-title"> <small><a rel="nofollow" id="cancel-comment-reply-link" href="product-page.html#respond" class="flv_disp_none">Cancel reply</a></small></h3>
                  <p class="must-log-in" style="color: #000;">
                      Vous devez vous <a href="#">connecter</a> pour ajouter votre avis.
                  </p> *}
              </div>
          </div> 
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div>

{* Appreciation post error modal *}
{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
  modal_id='update-comment-usefulness-post-error'
  modal_title={l s='Your review appreciation cannot be sent' d='Modules.Productcomments.Shop'}
  icon='error'
}

{* Confirm report modal *}
{include file='module:productcomments/views/templates/hook/confirm-modal.tpl'
  modal_id='report-comment-confirmation'
  modal_title={l s='Report comment' d='Modules.Productcomments.Shop'}
  modal_message={l s='Are you sure that you want to report this comment?' d='Modules.Productcomments.Shop'}
  icon='feedback'
}

{* Report comment posted modal *}
{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
  modal_id='report-comment-posted'
  modal_title={l s='Report sent' d='Modules.Productcomments.Shop'}
  modal_message={l s='Your report has been submitted and will be considered by a moderator.' d='Modules.Productcomments.Shop'}
}

{* Report abuse error modal *}
{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
  modal_id='report-comment-post-error'
  modal_title={l s='Your report cannot be sent' d='Modules.Productcomments.Shop'}
  icon='error'
}
