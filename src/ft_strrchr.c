/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/25 16:25:33 by franmart          #+#    #+#             */
/*   Updated: 2023/01/06 12:13:55 by franmart         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strrchr(const char *s, int c)
{
	int	i;
	int	l_pos;

	c = (char)c;
	i = 0;
	l_pos = -1;
	while (s[i] != '\0')
	{
		if (s[i] == c)
			l_pos = i;
		i++;
	}
	if (l_pos != -1)
		return ((char *)(s + l_pos));
	if (c == '\0')
		return ((char *)(s + i));
	return (0);
}
