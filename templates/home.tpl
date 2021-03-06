<div class="motd">
	<div widget-area="motd"></div>
</div>

<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-9 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		<!-- BEGIN categories -->
		<div class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
			<meta itemprop="name" content="{categories.name}">
			<!-- IF !categories.link -->
				<span class="category-info badge {categories.unread-class}"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
			<!-- ENDIF !categories.link -->
			<h4>
				<!-- IF categories.link -->
				<a href="{categories.link}" itemprop="url" target="_blank">
				<!-- ELSE -->
				<a href="{relative_path}/category/{categories.slug}" itemprop="url">
				<!-- ENDIF categories.link -->
				{categories.name}
				</a>
			</h4>

			<!-- IF categories.link -->
			<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
			<!-- ELSE -->
			<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
			<!-- ENDIF categories.link -->
				<div
					id="category-{categories.cid}" class="category-header icon category-header-image-{categories.imageClass}"
					
					style="
						<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
						<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
					"
				>
					<div class="category-slider-{categories.post_count}" style="
							<!-- IF categories.bgColor -->background-color: {categories.bgColor}; border-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
						">
						<!-- IF categories.icon -->
						<div class="category-box icon-container"><i class="fa {categories.icon} fa-4x"></i></div>
						<!-- ENDIF categories.icon -->
						<div class="category-box description-container" itemprop="description">{categories.description}</div>

						<!-- BEGIN posts -->
						<div class="category-box">
							<div class="post-preview">
								<p class=""><strong>{categories.posts.user.username}</strong> > {categories.posts.topic.title}</p>
							</div>
						</div>
						<!-- END posts -->
					</div>
				</div>
			</a>
		</div>
		<!-- END categories -->
	</div>

	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>