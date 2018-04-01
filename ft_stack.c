/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_stack.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jowalz <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/31 18:46:08 by jowalz            #+#    #+#             */
/*   Updated: 2018/03/31 19:59:53 by jowalz           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_stack.h"

void	push(t_stack **self, char data)
{
	t_stack *head;

	head = malloc(sizeof(t_stack));
	head->data = data;
	head->next = *self;
	*self = head;
}

int		pop(t_stack **self)
{
	int res;

	if (!*self)
		return (0);
	res = (*self)->data;
	*self = (*self)->next;
	return (res);
}
