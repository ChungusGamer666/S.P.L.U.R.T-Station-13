/mob/living
	// Current size multiplier, compared to world.icon_size
	var/current_size_multiplier = 1

/mob/living/update_transform()
	//aka transform.Copy()
	var/matrix/ntransform = matrix(transform)
	var/final_pixel_y = pixel_y
	var/changed = 0
	if(lying != lying_prev && rotate_on_lying)
		changed++
		ntransform.TurnTo(lying_prev,lying)
		if(lying == 0) //Lying to standing
			final_pixel_y = get_standard_pixel_y_offset()
		else //if(lying != 0)
			if(lying_prev == 0) //Standing to lying
				pixel_y = get_standard_pixel_y_offset()
				final_pixel_y = get_standard_pixel_y_offset(lying)
				if(dir & (EAST|WEST)) //Facing east or west
					setDir(pick(NORTH, SOUTH)) //So you fall on your side rather than your face or ass

	if(resize != RESIZE_DEFAULT_SIZE)
		changed++
		ntransform.Scale(resize)
		current_size_multiplier *= resize
		resize = RESIZE_DEFAULT_SIZE

	if(current_size_multiplier - RESIZE_DEFAULT_SIZE)
		changed++
		var/translation = ((resize * current_size_multiplier) - RESIZE_DEFAULT_SIZE)*(world.icon_size/2)
		final_pixel_y += translation

	if(changed)
		animate(src, transform = ntransform, time = 2, pixel_y = final_pixel_y, easing = EASE_IN|EASE_OUT)
		floating_need_update = TRUE

/mob/living/proc/resize(multiplier = RESIZE_DEFAULT_SIZE)
	resize = multiplier
	update_transform()
