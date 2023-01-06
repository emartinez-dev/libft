/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstreverse.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/06 12:17:54 by franmart          #+#    #+#             */
/*   Updated: 2023/01/06 12:18:13 by franmart         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

t_list	*ft_lstreverse(t_list *list)
{
	t_list	*new_list;
	t_list	*head;
	t_list	*head_cpy;

	new_list = NULL;
	head = list;
	while (head != NULL)
	{
		head_cpy = ft_lstnew(head->content);
		ft_lstadd_front(&new_list, head_cpy);
		head = head->next;
	}
	return (new_list);
}
