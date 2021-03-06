# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rgilles <rgilles@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/30 15:14:04 by rgilles           #+#    #+#              #
#    Updated: 2021/04/01 13:04:51 by rgilles          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strlen

section .text

ft_strlen:
	mov		rax, 0
	mov		rcx, -1
	repne scasb
	neg		rcx
	mov		rax, rcx
	sub		rax, 2
	ret
